MODULE SharedModule(NOSTEPIN)
    !*****************************************************
    !Module Name:   SharedModule
    !Version:       1.0
    !Description:   
    !Date:          2021-1-6
    !Author:        Michael
    !*****************************************************w

    !2021-8-11, Michael, Add numScanJob1, ScanSeamByLaser, ScanData
    !2021-8-12, Michael, Add GetDropFeet
    !2021-8-13, Michael, Add ReloadGantryOffset
    !2021-8-16, Michael, Add RefreshDisplacement

    RECORD ScanData
        num joint_no;
    ENDRECORD

    PERS bool boolDebugMode:=FALSE;
    PERS bool boolEnableGantryOffset:=TRUE;
    PERS bool boolEnableSearch:=TRUE;
    PERS bool boolDebugSearch:=TRUE;

    PERS bool boolEnableOffset:=FALSE;

    !Seam 1
    CONST ScanData scanJoint1:=[1];
    !Seam 2
    CONST ScanData scanJoint2:=[2];
    !Seam 3
    CONST ScanData scanJoint3:=[3];
    !Seam 4
    CONST ScanData scanJoint4:=[4];
    !Seam 5
    CONST ScanData scanJoint5:=[5];
    !Seam 6
    CONST ScanData scanJoint6:=[6];
    !Seam 7
    CONST ScanData scanJoint7:=[7];
    !Seam 8
    CONST ScanData scanJoint8:=[8];
    !Seam 9
    CONST ScanData scanJoint9:=[9];
    !Seam 10
    CONST ScanData scanJoint10:=[10];

    !numJobMode: 0 - Keep last, 1 - by TPU, 2 - by yml, 3 - by PLC
    PERS num numJobMode:=3;

    !For numJobMode=1
    PERS RECORDModelData rModelDataFirst{4}:=[["1004",[-513,-36,67]],["",[-513,-36,67]],["",[-513,-36,67]],["",[-513,-36,67]]];
    PERS pos posModelOffset:=[-1670,10,0];
    PERS num numModelOffsetStart:=1;
    PERS num numModelOffsetQuantity:=1;

    !For numJobMode=3
    PERS dnum numPLCJobID:=1;
    PERS num numGantryPosition:=36;

    PERS num numWaitTimeForLaser:=0;
    PERS num numAproachRelToolZ:=-50;

    PROC Scan_1D_Laser(INOUT robtarget ScanFound,robtarget ScanPoint,num JointNo)
        Logging "Scan:"+ValToStr(ScanPoint.trans);
        MoveL ScanPoint,speedAproach,fine,toolLaser\WObj:=wobjCurrent;
        WaitTime numWaitTimeForLaser/2;
        IF RobOS() THEN
            ScanFound:=ScanPoint;
            Logging "Found:"+ValToStr(ScanFound.trans);
        ELSE
            ScanFound:=ScanPoint;
        ENDIF
    ENDPROC

    PROC ScanSeamByLaser(INOUT robtarget ScanFound,robtarget ScanPoint,ScanData JointData,speeddata Speed,PERS tooldata Tool\PERS wobjdata WObj)
        Logging "Scan: "+ArgName(ScanPoint)+"="+ValToStr(ScanPoint.trans);
        MoveJ ScanPoint,speedAproach,fine,Tool\WObj?WObj;
        WaitTime numWaitTimeForLaser/2;
        IF RobOS() THEN
            SeamFind JointData.joint_no\FoundPoint:=ScanFound,ScanPoint,speedAproach,js1,SenSch1,Tool\WObj?WObj;
        ELSE
            IF boolDebugSearch THEN
                UIMsgBox\Header:="Simulation Laser Sensor","Use scan point for found point"\MsgLine3:="Press OK to continue"\Buttons:=btnOK\Icon:=iconWarning;
            ENDIF
            ScanFound:=ScanPoint;
        ENDIF
        Logging "Found: "+ArgName(ScanFound)+"="+ValToStr(ScanFound.trans);
    ENDPROC

    FUNC extjoint GetExtOffset(pos posOrigin)
        VAR extjoint extTemp:=[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9];
        extTemp.eax_a:=posOrigin.x+extGantryTranslation.eax_a;
        extTemp.eax_b:=posOrigin.y+extGantryTranslation.eax_b;
        extTemp.eax_c:=-posOrigin.z+extGantryTranslation.eax_c;
        RETURN extTemp;
    ENDFUNC

    PROC LoadModelDatabyTPU()
        VAR num numIndex:=0;
        Logging "Offset: "+ValToStr(posModelOffset);
        Logging "Quantity: "+ValToStr(numModelOffsetQuantity);
        FOR i FROM numModelOffsetStart TO numModelOffsetQuantity DO
            FOR j FROM 1 TO Dim(rModelDataFirst,1) DO
                IF rModelDataFirst{j}.name<>"" THEN
                    Incr numIndex;
                    Logging "Load: "+ValToStr(rModelDataFirst{j}.name);
                    strWeldPartList{numIndex}:=rModelDataFirst{j}.name;
                    posWeldPartList{numIndex}:=rModelDataFirst{j}.location+posModelOffset*(i-1);
                ENDIF
            ENDFOR
        ENDFOR
        numModelStart:=1;
        numModelQuantity:=numModelOffsetQuantity-numModelOffsetStart+1;
    ENDPROC

    PROC LoadModelDatabyYML()
        VAR num numIndex:=0;
        Logging "LoadModelDatabyYML";
        LoadModelDataYamlFile strModelDataYamlFileName;
        FOR i FROM 1 TO Dim(rModelDataArray,1) DO
            IF rModelDataArray{i}.name<>"" THEN
                Incr numIndex;
                Logging "Load: "+ValToStr(rModelDataArray{i}.name);
                strWeldPartList{numIndex}:=rModelDataArray{i}.name;
                posWeldPartList{numIndex}:=rModelDataArray{i}.location;
            ENDIF
        ENDFOR
        numModelStart:=1;
        numModelQuantity:=numIndex;
    ENDPROC

    PROC LoadModelDatabyPLC()
        Logging "LoadModelDatabyPLC";
        numPLCJobID:=GInputDnum(Gi112_JobID);
        numGantryPosition:=AInput(Ai144_GantryPosition);
        Logging "numPLCJobID="+ValToStr(numPLCJobID);
        Logging "numGantryPosition="+ValToStr(numGantryPosition);
        strModelDataYamlFileName:="job_"+ValToStr(numPLCJobID)+ ".yml";
        LoadModelDatabyYML;
    ENDPROC

    PROC ReloadGantryOffset()
        EOffsSet extGantryOffsetCurrent;
        !        IF RobOS() THEN
        !            IF NOT ASFMu_Initialize(Laser_IP_Add,2,TRUE,TRUE,TRUE,toolLaser,wobjCurrent) THEN
        !                TPWrite "The socket between laser and robot error Can't connect to vision controller";
        !                stop;
        !            ENDIF
        !        ENDIF
    ENDPROC

    PROC InhibWeld(bool boolInhib\switch Weld\switch Weave\switch Track)
        IF boolInhib THEN
            IF Present(Weave) THEN
                SetDO sdoWeldInhib,1;
            ENDIF
            IF Present(Weave) THEN
                SetDO sdoWeldInhib,1;
            ENDIF
            IF Present(Track) THEN
                SetDO sdoTrackInhib,1;
            ENDIF
        ELSE
            IF Present(Weave) THEN
                SetDO sdoWeldInhib,0;
            ENDIF
            IF Present(Weave) THEN
                SetDO sdoWeldInhib,0;
            ENDIF
            IF Present(Track) THEN
                SetDO sdoTrackInhib,0;
            ENDIF
        ENDIF
    ENDPROC

    PROC RefreshDisplacement(\switch X\switch Y\switch Z,INOUT pose poseDisp,pos posAbsoluteOffset,robtarget p0,robtarget pFound1,robtarget pFound2)
        VAR pos posOffset;
        posOffset:=posAbsoluteOffset+GetDropFeet(p0.trans,pFound1.trans,pFound2.trans\OnlyOffset);
        IF Present(X) THEN
            poseDisp.trans.x:=posOffset.x;
        ENDIF
        IF Present(Y) THEN
            poseDisp.trans.y:=posOffset.y;
        ENDIF
        IF Present(Z) THEN
            poseDisp.trans.z:=posOffset.z;
        ENDIF
    ENDPROC

ENDMODULE