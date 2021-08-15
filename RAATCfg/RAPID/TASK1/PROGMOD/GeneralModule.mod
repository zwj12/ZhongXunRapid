MODULE GeneralModule(NOSTEPIN)
    !*****************************************************
    !Module Name:   GeneralModule
    !Version:       1.0
    !Description:   This module can be encrypted
    !Date:          2021-7-27
    !Author:        Michael
    !*****************************************************

    !2021-8-15, Michael, Modify GetGantryOffsetDirection

    RECORD RECORDModelData
        string name;
        pos location;
    ENDRECORD

    !Delete the last year's log files
    PROC ClearOldLogFiles()
        VAR string strLoggingPath:="HOME:/Logging";
        VAR dir dirLogging;
        VAR string filename;
        VAR string date;
        VAR string strYear;
        VAR string strYearSecond;
        VAR num numYear;
        VAR bool ok;
        date:=CDate();
        strYear:=StrPart(date,1,4);
        IF StrPart(date,6,2)="01" THEN
            ok:=StrToVal(strYear,numYear);
            strYearSecond:=ValToStr(numYear-1);
        ELSE
            strYearSecond:=strYear;
        ENDIF
        IF IsFile(strLoggingPath\Directory) THEN
            OpenDir dirLogging,strLoggingPath;
            WHILE ReadDir(dirLogging,filename) DO
                IF filename<>".." AND filename<>"." THEN
                    IF StrPart(filename,1,4)<>strYear AND StrPart(filename,1,4)<>strYearSecond THEN
                        RemoveFile strLoggingPath+"/"+filename;
                    ENDIF
                ENDIF
            ENDWHILE
            CloseDir dirLogging;
        ENDIF
    ERROR
        RETURN ;
    ENDPROC

    FUNC bool CheckLicense()
        VAR string strRobotSerialNumber:="140-107895";
        VAR string strRobotSerialNumber2:="140-107896";
        IF RobOS()=FALSE OR IsSysId(strRobotSerialNumber) OR IsSysId(strRobotSerialNumber2) THEN
            RETURN TRUE;
        ELSE
            !ErrWrite "System identity fault","Faulty system identity for this program ";
            !EXIT;
            RETURN FALSE;
        ENDIF
    ENDFUNC

    PROC LoadModelData()
        IF NOT CheckLicense() THEN
            !            ErrWrite "System identity fault","Faulty system identity for this program ";
            TPWrite "The license for this controller is not enable.";
            TPWrite "Please contact zwj_12@163.com for assistance.";
            EXIT;
        ENDIF
        Logging "LoadModelData by job mode: "+ValToStr(numJobMode);
        IF numJobMode=1 THEN
            LoadModelDatabyTPU;
        ELSEIF numJobMode=2 THEN
            LoadModelDatabyYML;
        ELSEIF numJobMode=3 THEN
            LoadModelDatabyPLC;
        ENDIF
    ENDPROC

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

    FUNC pos RoundPos(pos posRoundPos)
        posRoundPos.x:=Round(posRoundPos.x\Dec:=1);
        posRoundPos.y:=Round(posRoundPos.y\Dec:=1);
        posRoundPos.z:=Round(posRoundPos.z\Dec:=1);
        RETURN posRoundPos;
    ENDFUNC

    FUNC num GetBaseFramePosZ()
        VAR num numBaseFramePosZ;
        ReadCfgData "/MOC/ROBOT/GantryXYZ","base_frame_pos_z",numBaseFramePosZ;
        numBaseFramePosZ:=numBaseFramePosZ*1000;
        !Logging "BaseFramePosZ="+ValToStr(numBaseFramePosZ);
        RETURN numBaseFramePosZ;
    ENDFUNC

    FUNC num GetQuadrant()
        VAR listitem listQuarterData{6}:=[["","Quadrant1"],["","Quadrant2"],["","Quadrant3"],["","Quadrant4"],["","Quadrant14"],["","Quadrant23"]];
        VAR num list_item;
        VAR btnres button_answer;
        VAR num numQuadrant:=-1;
        list_item:=UIListView(\Result:=button_answer\Header:="Select Quadrant",listQuarterData\Buttons:=btnOKCancel\Icon:=iconInfo\DefaultIndex:=1);
        IF button_answer=resOK THEN
            numQuadrant:=list_item;
            IF numQuadrant=5 THEN
                numQuadrant:=14;
            ELSEIF numQuadrant=6 THEN
                numQuadrant:=23;
            ENDIF
            Logging "Select "+listQuarterData{list_item}.text;
        ELSE
            numQuadrant:=-1;
        ENDIF
        RETURN numQuadrant;
    ENDFUNC

    FUNC pos GetGantryOffsetDirection(num numQuadrant)
        VAR pos posGantryOffsetDirection:=[0,0,0];
        TEST numQuadrant
        CASE 1:
            posGantryOffsetDirection.x:=1;
            posGantryOffsetDirection.y:=1;
        CASE 2:
            posGantryOffsetDirection.x:=-1;
            posGantryOffsetDirection.y:=1;
        CASE 3:
            posGantryOffsetDirection.x:=-1;
            posGantryOffsetDirection.y:=-1;
        CASE 4:
            posGantryOffsetDirection.x:=1;
            posGantryOffsetDirection.y:=-1;
        CASE 12:
            posGantryOffsetDirection.x:=0;
            posGantryOffsetDirection.y:=1;
        CASE 23:
            posGantryOffsetDirection.x:=-1;
            posGantryOffsetDirection.y:=0;
        CASE 34:
            posGantryOffsetDirection.x:=0;
            posGantryOffsetDirection.y:=-1;
        CASE 14:
            posGantryOffsetDirection.x:=1;
            posGantryOffsetDirection.y:=0;
        ENDTEST
        RETURN posGantryOffsetDirection;
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

    FUNC pos GetDropFeet(pos pos0,pos pos1,pos pos2\switch KeepX|switch KeepY|switch KeepZ\switch OnlyOffset)
        VAR pos posDropFeet;
        VAR pos posDropFeetAdvised;
        VAR pos posOffset;
        VAR num numK;
        VAR num numKnumerator;
        VAR num numKdenominator;
        Logging\DEBUG,"pos0="+ValToStr(RoundPos(pos0));
        Logging\DEBUG,"pos1="+ValToStr(RoundPos(pos1))+", pos2="+ValToStr(RoundPos(pos2));
        numKnumerator:=(pos1.x-pos0.x)*(pos2.x-pos1.x)+(pos1.y-pos0.y)*(pos2.y-pos1.y)+(pos1.z-pos0.z)*(pos2.z-pos1.z);
        numKdenominator:=pow(pos2.x-pos1.x,2)+pow(pos2.y-pos1.y,2)+pow(pos2.z-pos1.z,2);
        numK:=0-numKnumerator/numKdenominator;
        !Logging\DEBUG,"numKnumerator="+ValToStr(numKnumerator);
        !Logging\DEBUG,"numKdenominator="+ValToStr(numKdenominator);
        !Logging\DEBUG,"numK="+ValToStr(numK);
        posDropFeet.x:=numK*(pos2.x-pos1.x)+pos1.x;
        posDropFeet.y:=numK*(pos2.y-pos1.y)+pos1.y;
        posDropFeet.z:=numK*(pos2.z-pos1.z)+pos1.z;
        posDropFeetAdvised:=posDropFeet;
        IF Present(KeepX) THEN
            posDropFeetAdvised.x:=pos0.x;
        ELSEIF Present(KeepY) THEN
            posDropFeetAdvised.y:=pos0.y;
        ELSEIF Present(KeepZ) THEN
            posDropFeetAdvised.z:=pos0.z;
        ENDIF
        posOffset:=posDropFeetAdvised-pos0;
        Logging\DEBUG,"DropFeet="+ValToStr(RoundPos(posDropFeet))+", Advised="+ValToStr(RoundPos(posDropFeetAdvised));
        Logging\DEBUG,"Offset="+ValToStr(RoundPos(posOffset));
        IF Present(OnlyOffset) THEN
            RETURN posOffset;
        ELSE
            RETURN posDropFeet;
        ENDIF
    ENDFUNC

    FUNC robtarget GetAproachTarget(robtarget robtIn)
        VAR robtarget robOut;
        VAR robtarget robTemp;
        VAR pos posK:=[0,0,0];
        robTemp:=RelTool(robtIn,0,0,-100);
        IF robTemp.trans.x<>robtIn.trans.x THEN
            posK.x:=(robTemp.trans.x-robtIn.trans.x)/Abs(robTemp.trans.x-robtIn.trans.x);
        ENDIF
        IF robTemp.trans.y<>robtIn.trans.y THEN
            posK.y:=(robTemp.trans.y-robtIn.trans.y)/Abs(robTemp.trans.y-robtIn.trans.y);
        ENDIF
        IF robTemp.trans.z<>robtIn.trans.z THEN
            posK.z:=(robTemp.trans.z-robtIn.trans.z)/Abs(robTemp.trans.z-robtIn.trans.z);
        ENDIF
        posK:=posK*Abs(numAproachRelToolZ);
        robOut:=robtIn;
        robOut.trans:=robtIn.trans+posK;
        RETURN robOut;
    ENDFUNC

ENDMODULE