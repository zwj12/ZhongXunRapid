MODULE TestModule
    !*****************************************************
    !Module Name: TestModule
    !Version:     1.0
    !Description: 
    !Date:        2021-1-6
    !Author:      Michael
    !*****************************************************

    !2021-8-11, Michael, Add GetBaseFramePosZ, DepartGantry, modify MoveGanrtyQuadrantByWobjCur

    TASK PERS jointtarget jointPlaneXZ:=[[90,-45,45,0,-90,90],[-1997.56,0,-600,9E+09,9E+09,9E+09]];
    PERS robtarget pWobjX1:=[[-1843.85,70.55,208.53],[0.231263,-0.189593,-0.879297,0.370687],[0,0,0,4],[-1810.13,354.262,201.219,9E+09,9E+09,9E+09]];
    PERS robtarget pWobjX2:=[[-1518.46,70.55,208.53],[0.231263,-0.189594,-0.879297,0.370687],[0,0,0,4],[-1484.74,354.262,201.219,9E+09,9E+09,9E+09]];
    PERS robtarget pWobjY1:=[[-2027.90,437.15,211.77],[0.401347,0.686043,-0.584941,-0.161585],[0,0,-2,4],[-1744.2,354.262,201.219,9E+09,9E+09,9E+09]];
    PERS robtarget pWobjX1_Found:=[[-1975.74,-58.6,60],[0.231263,-0.189593,-0.879297,0.370687],[0,0,0,4],[-1810.13,354.262,201.219,9E+09,9E+09,9E+09]];
    PERS robtarget pWobjX2_Found:=[[-1649.02,-53.19,62.72],[0.231263,-0.189594,-0.879297,0.370687],[0,0,0,4],[-1484.74,354.262,201.219,9E+09,9E+09,9E+09]];
    PERS robtarget pWobjY1_Found:=[[-2172.42,347.84,67.22],[0.401347,0.686043,-0.584941,-0.161585],[0,0,-2,4],[-1744.2,354.262,201.219,9E+09,9E+09,9E+09]];
    PERS pose poseFrame:=[[-2165.56,-61.7432,58.4197],[0.999899,0.010774,-0.00407261,0.00832256]];

    PROC DepartGantry(\switch Quadrant1|switch Quadrant2|switch Quadrant3|switch Quadrant4)
        VAR num numGantryOffsetDirectionX;
        VAR num numGantryOffsetDirectionY;
        IF Present(Quadrant1) THEN
            numGantryOffsetDirectionX:=1;
            numGantryOffsetDirectionY:=1;
        ELSEIF Present(Quadrant2) THEN
            numGantryOffsetDirectionX:=-1;
            numGantryOffsetDirectionY:=1;
        ELSEIF Present(Quadrant3) THEN
            numGantryOffsetDirectionX:=-1;
            numGantryOffsetDirectionY:=-1;
        ELSEIF Present(Quadrant4) THEN
            numGantryOffsetDirectionX:=1;
            numGantryOffsetDirectionY:=-1;
        ELSE
            RETURN ;
        ENDIF
        jointCurrent:=CJointT();
        jointCurrent.extax.eax_a:=jointCurrent.extax.eax_a+extjointGantryDepart.eax_a*numGantryOffsetDirectionX;
        jointCurrent.extax.eax_b:=jointCurrent.extax.eax_b+extjointGantryDepart.eax_b*numGantryOffsetDirectionY;
        jointCurrent.extax.eax_c:=jointCurrent.extax.eax_c+extjointGantryDepart.eax_c;
        MoveAbsJ jointCurrent,speedAir,fine,toolWeldGun\WObj:=wobjCurrent;
    ENDPROC

    PROC MoveGanrtyQuadrantByWobjCur()
        VAR num numQuadrant;
        VAR num numGantryOffsetDirectionX;
        VAR num numGantryOffsetDirectionY;
        VAR extjoint extjointGantryOffsetCur;
        numQuadrant:=GetQuadrant();
        TEST numQuadrant
        CASE 1:
            numGantryOffsetDirectionX:=1;
            numGantryOffsetDirectionY:=1;
        CASE 2:
            numGantryOffsetDirectionX:=-1;
            numGantryOffsetDirectionY:=1;
        CASE 3:
            numGantryOffsetDirectionX:=-1;
            numGantryOffsetDirectionY:=-1;
        CASE 4:
            numGantryOffsetDirectionX:=1;
            numGantryOffsetDirectionY:=-1;
        DEFAULT:
            RETURN ;
        ENDTEST
        extjointGantryOffsetCur.eax_a:=extjointGantryOffset.eax_a*numGantryOffsetDirectionX;
        extjointGantryOffsetCur.eax_b:=extjointGantryOffset.eax_b*numGantryOffsetDirectionY;
        extjointGantryOffsetCur.eax_c:=extjointGantryOffset.eax_c;
        extjointGantryOffsetCur:=GetQuadrantGantryOffset(extjointGantryOffsetCur);
        IF extjointGantryOffsetCur.eax_a=9E+9 THEN
            RETURN ;
        ENDIF
        jointCurrent:=CJointT();
        jointCurrent.extax.eax_a:=wobjCurrent.uframe.trans.x+extjointGantryOffsetCur.eax_a;
        jointCurrent.extax.eax_b:=wobjCurrent.uframe.trans.y+extjointGantryOffsetCur.eax_b;
        jointCurrent.extax.eax_c:=GetBaseFramePosZ()-wobjCurrent.uframe.trans.z+extjointGantryOffsetCur.eax_c;
        Logging "Move Gantry to ["+ValToStr(jointCurrent.extax.eax_a)+","+ValToStr(jointCurrent.extax.eax_b)+","+ValToStr(jointCurrent.extax.eax_c)+"]";
        MoveAbsJ jointCurrent,speedAir,fine,toolWeldGun\WObj:=wobjCurrent;

    ENDPROC

    FUNC num GetBaseFramePosZ()
        VAR num numBaseFramePosZ;
        ReadCfgData "/MOC/ROBOT/GantryXYZ","base_frame_pos_z",numBaseFramePosZ;
        numBaseFramePosZ:=numBaseFramePosZ*1000;
        Logging "BaseFramePosZ="+ValToStr(numBaseFramePosZ);
        RETURN numBaseFramePosZ;
    ENDFUNC

    FUNC num GetQuadrant()
        VAR listitem listQuarterData{4}:=[["","Quadrant1"],["","Quadrant2"],["","Quadrant3"],["","Quadrant4"]];
        VAR num list_item;
        VAR btnres button_answer;
        list_item:=UIListView(\Result:=button_answer\Header:="Select Quadrant",listQuarterData\Buttons:=btnOKCancel\Icon:=iconInfo\DefaultIndex:=1);
        IF button_answer=resOK THEN
            Logging "Select "+listQuarterData{list_item}.text;
            RETURN list_item;
        ELSE
            RETURN -1;
        ENDIF
    ENDFUNC

    FUNC extjoint GetQuadrantGantryOffset(extjoint extjointGantryOffsetCur)
        VAR string sHeader:="Check Quadrant Gantry Offset";
        VAR string stMsgArray{5};
        VAR string stButtons{5}:=["X","Y","Z","OK","Cancel"];
        VAR num nAnswer;
        VAR bool boolFlag:=TRUE;
        VAR num numInput;
        WHILE boolFlag DO
            jointCurrent:=CJointT();
            stMsgArray{1}:="The current gantry position is ["+ValToStr(jointCurrent.extax.eax_a)+","+ValToStr(jointCurrent.extax.eax_b)+","+ValToStr(jointCurrent.extax.eax_c)+"]";
            stMsgArray{2}:="The origin or wobjCurrent is "+ValToStr(wobjCurrent.uframe.trans);
            stMsgArray{3}:="The current gantry offset is ["+ValToStr(extjointGantryOffsetCur.eax_a)+","+ValToStr(extjointGantryOffsetCur.eax_b)+","+ValToStr(extjointGantryOffsetCur.eax_c)+"]";
            jointCurrent.extax.eax_a:=wobjCurrent.uframe.trans.x+extjointGantryOffsetCur.eax_a;
            jointCurrent.extax.eax_b:=wobjCurrent.uframe.trans.y+extjointGantryOffsetCur.eax_b;
            jointCurrent.extax.eax_c:=wobjCurrent.uframe.trans.z+extjointGantryOffsetCur.eax_c;
            stMsgArray{4}:="The gantry destination is ["+ValToStr(jointCurrent.extax.eax_a)+","+ValToStr(jointCurrent.extax.eax_b)+","+ValToStr(jointCurrent.extax.eax_c)+"]";
            stMsgArray{5}:="You can modify gantry offset by button X Y Z";
            nAnswer:=UIMessageBox(\Header:=sHeader\MsgArray:=stMsgArray\BtnArray:=stButtons\Icon:=iconWarning);
            IF (nAnswer=1) THEN
                numInput:=UINumEntry(\Header:="Gantry Offset X"\Message:="Please input the new offset X of gantry"\Icon:=iconInfo\InitValue:=extjointGantryOffsetCur.eax_a);
                extjointGantryOffsetCur.eax_a:=Round(numInput);
                Logging "New Gantry Offset X: "+ValToStr(extjointGantryOffsetCur.eax_a);
            ELSEIF (nAnswer=2) THEN
                numInput:=UINumEntry(\Header:="Gantry Offset Y"\Message:="Please input the new offset Y of gantry"\Icon:=iconInfo\InitValue:=extjointGantryOffsetCur.eax_b);
                extjointGantryOffsetCur.eax_b:=Round(numInput);
                Logging "New Gantry Offset Y: "+ValToStr(extjointGantryOffsetCur.eax_b);
            ELSEIF (nAnswer=3) THEN
                numInput:=UINumEntry(\Header:="Gantry Offset Z"\Message:="Please input the new offset Z of gantry"\Icon:=iconInfo\InitValue:=extjointGantryOffsetCur.eax_c);
                extjointGantryOffsetCur.eax_c:=Round(numInput);
                Logging "New Gantry Offset Z: "+ValToStr(extjointGantryOffsetCur.eax_c);
            ELSEIF (nAnswer=4) THEN
                Logging "Use Gantry Offset: ["+ValToStr(extjointGantryOffsetCur.eax_a)+","+ValToStr(extjointGantryOffsetCur.eax_b)+","+ValToStr(extjointGantryOffsetCur.eax_c)+"]";
                boolFlag:=FALSE;
            ELSEIF (nAnswer=5) THEN
                Logging "Canceled";
                extjointGantryOffsetCur:=[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9];
                boolFlag:=FALSE;
            ENDIF
        ENDWHILE
        RETURN extjointGantryOffsetCur;
    ENDFUNC

    PROC MoveGanrtyToPlaneXZ()
        jointCurrent:=CJointT();
        jointPlaneXZ.extax.eax_a:=jointCurrent.extax.eax_a;
        MoveAbsJ jointPlaneXZ,speedAir,fine,toolWeldGun\WObj:=wobjCurrent;
    ENDPROC

    PROC SearchWobjOrigin_Quadrant1()
        IF NOT ASFMu_Initialize(Laser_IP_Add,2,TRUE,TRUE,TRUE,toolWeldGun,wobj0) THEN
            TPWrite "The socket between laser and robot error Can't connect to vision controller";
            stop;
        ENDIF
        MoveJ pWobjX1,speedAproach,fine,toolWeldGun\WObj:=wobj0;
        SeamFind numScanJob2\FoundPoint:=pWobjX1_Found,pWobjX1,speedAproach,js1,SenSch1,toolWeldGun\Wobj:=wobj0;
        MoveJ pWobjX2,speedAproach,fine,toolWeldGun\WObj:=wobj0;
        SeamFind numScanJob2\FoundPoint:=pWobjX2_Found,pWobjX2,speedAproach,js1,SenSch1,toolWeldGun\Wobj:=wobj0;
        MoveJ pWobjY1,speedAproach,fine,toolWeldGun\WObj:=wobj0;
        SeamFind numScanJob2\FoundPoint:=pWobjY1_Found,pWobjY1,speedAproach,js1,SenSch1,toolWeldGun\Wobj:=wobj0;
        poseFrame:=DefFrame(pWobjX1_Found,pWobjX2_Found,pWobjY1_Found\Origin:=3);
        Logging "poseFrame.trans:="+ValToStr(poseFrame.trans);
        Logging "poseFrame.rot:="+GetEulerAngleString(poseFrame.rot);
        wobjCurrent.uframe:=poseFrame;
    ENDPROC

    PROC SearchWobjOrigin_Quadrant2()
        IF NOT ASFMu_Initialize(Laser_IP_Add,2,TRUE,TRUE,TRUE,toolWeldGun,wobj0) THEN
            TPWrite "The socket between laser and robot error Can't connect to vision controller";
            stop;
        ENDIF
        MoveJ pWobjX1,speedAproach,fine,toolWeldGun\WObj:=wobj0;
        SeamFind numScanJob2\FoundPoint:=pWobjX1_Found,pWobjX1,speedAproach,js1,SenSch1,toolWeldGun\Wobj:=wobj0;
        MoveJ pWobjX2,speedAproach,fine,toolWeldGun\WObj:=wobj0;
        SeamFind numScanJob2\FoundPoint:=pWobjX2_Found,pWobjX2,speedAproach,js1,SenSch1,toolWeldGun\Wobj:=wobj0;
        MoveJ pWobjY1,speedAproach,fine,toolWeldGun\WObj:=wobj0;
        SeamFind numScanJob2\FoundPoint:=pWobjY1_Found,pWobjY1,speedAproach,js1,SenSch1,toolWeldGun\Wobj:=wobj0;
        poseFrame:=DefFrame(pWobjX1_Found,pWobjX2_Found,pWobjY1_Found\Origin:=3);
        Logging "poseFrame.trans:="+ValToStr(poseFrame.trans);
        Logging "poseFrame.rot:="+GetEulerAngleString(poseFrame.rot);
        wobjCurrent.uframe:=poseFrame;
    ENDPROC
    
ENDMODULE