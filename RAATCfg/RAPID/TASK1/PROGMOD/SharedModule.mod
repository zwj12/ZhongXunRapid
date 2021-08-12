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

    RECORD ScanData
        num joint_no;
    ENDRECORD

    PERS bool boolDebugMode:=FALSE;
    PERS bool boolEnableGantryOffset:=TRUE;
    PERS bool boolEnableSearch:=TRUE;
    PERS bool boolDebugSearch:=TRUE;

    PERS bool boolEnableOffset:=FALSE;

    !Butt
    CONST ScanData scanJoint1:=[1];
    !Fillet
    CONST ScanData scanJoint2:=[2];

    !numJobMode: 0 - Keep last, 1 - by TPU, 2 - by yml, 3 - by PLC
    PERS num numJobMode:=1;

    !For numJobMode=1
    PERS RECORDModelData rModelDataFirst:=["0001",[2188,-688,328]];
    PERS pos posModelOffset:=[0,1009,0];
    PERS num numModelOffsetQuantity:=2;

    PERS num numWaitTimeForLaser:=0.5;
    PERS num numAproachRelToolZ:=-50;

    FUNC pos GetEulerAngle(orient orientIn)
        VAR pos eulerAngle;
        eulerAngle.z:=EulerZYX(\Z,orientIn);
        eulerAngle.y:=EulerZYX(\Y,orientIn);
        eulerAngle.z:=EulerZYX(\X,orientIn);
        RETURN eulerAngle;
    ENDFUNC

    FUNC string GetEulerAngleString(orient orientIn)
        VAR pos eulerAngle;
        VAR string strEulerAngle;
        eulerAngle.x:=RoundOff(EulerZYX(\Z,orientIn));
        eulerAngle.y:=RoundOff(EulerZYX(\Y,orientIn));
        eulerAngle.z:=RoundOff(EulerZYX(\X,orientIn));
        RETURN ValToStr(eulerAngle);
    ENDFUNC

    FUNC num RoundOff(num numRoundOff)
        IF Abs(numRoundOff)<0.000001 THEN
            numRoundOff:=0;
        ENDIF
        RETURN numRoundOff;
    ENDFUNC

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
        Logging "Load: "+ValToStr(rModelDataFirst);
        Logging "Offset: "+ValToStr(posModelOffset);
        Logging "Quantity: "+ValToStr(numModelOffsetQuantity);
        FOR i FROM 1 TO numModelOffsetQuantity DO
            strWeldPartList{i}:=rModelDataFirst.name;
            posWeldPartList{i}:=rModelDataFirst.location+posModelOffset*(i-1);
        ENDFOR
        numModelQuantity:=numModelOffsetQuantity;
    ENDPROC

    PROC LoadModelDatabyPLC()
        Logging "LoadModelDatabyPLC";
    ENDPROC

    PROC LoadModelDatabyYML()
        Logging "LoadModelDatabyYML";
    ENDPROC

    FUNC pos GetDropFeet(pos pos0,pos pos1,pos pos2\switch KeepX|switch KeepY|switch KeepZ)
        VAR pos posDropFeet;
        VAR num numK;
        VAR num numKnumerator;
        VAR num numKdenominator;
        numKnumerator:=(pos1.x-pos0.x)*(pos2.x-pos1.x)+(pos1.y-pos0.y)*(pos2.y-pos1.y)+(pos1.z-pos0.z)*(pos2.z-pos1.z);
        numKdenominator:=pow(pos2.x-pos1.x,2)+pow(pos2.y-pos1.y,2)+pow(pos2.z-pos1.z,2);
        numK:=numKnumerator/numKdenominator;
        Logging\DEBUG,"numKnumerator="+ValToStr(numKnumerator);
        Logging\DEBUG,"numKdenominator="+ValToStr(numKdenominator);
        Logging\DEBUG,"numK="+ValToStr(numK);
        posDropFeet.x:=numK*(pos2.x-pos1.x)+pos1.x;
        posDropFeet.y:=numK*(pos2.y-pos1.y)+pos1.y;
        posDropFeet.z:=numK*(pos2.z-pos1.z)+pos1.z;
        Logging\DEBUG,"posDropFeet="+ValToStr(posDropFeet);
        IF Present(KeepX) THEN
            posDropFeet.x:=pos0.x;
        ELSEIF Present(KeepY) THEN
            posDropFeet.y:=pos0.y;
        ELSEIF Present(KeepZ) THEN
            posDropFeet.z:=pos0.z;
        ENDIF
        Logging\DEBUG,"Adjust DropFeet="+ValToStr(posDropFeet);
        RETURN posDropFeet;
    ENDFUNC

ENDMODULE