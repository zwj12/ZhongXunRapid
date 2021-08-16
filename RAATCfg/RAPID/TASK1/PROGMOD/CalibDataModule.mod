MODULE CalibDataModule
    !*****************************************************
    !Module Name:   CalibDataModule
    !Version:       1.0
    !Description:   
    !Date:          2021-3-25
    !Author:        Michael
    !*****************************************************

    TASK PERS menudata md_DefineWeldGun:=["Define TCP of Weld Gun","","DefTCPofWeldGun",1,"",255,True,1,100,False,201];
    TASK PERS menudata md_DefineLaser:=["Define TCP of Laser","","DefTCPofLaser",1,"",255,True,1,100,False,202];

    TASK PERS bool boolSaveModule:=FALSE;

    TASK PERS tooldata toolWeldGun:=[TRUE,[[-76.79,-1.749,591.944],[0.981627183,0,0.190808995,0]],[3,[0,0,1],[1,0,0,0],0,0,0]];
    TASK PERS tooldata toolLaser:=[TRUE,[[40.746,0.415,676.2],[1,0,0,0]],[3,[0,0,1],[1,0,0,0],0,0,0]];
    TASK PERS tooldata toolWeldGunNew:=[TRUE,[[-59.9643,7.99775,542.45],[0.981627,0,0.190809,0]],[3,[0,0,1],[1,0,0,0],0,0,0]];
    TASK PERS tooldata toolLaserNew:=[TRUE,[[40.746,0.415,676.2],[1,0,0,0]],[3,[0,0,1],[1,0,0,0],0,0,0]];
    TASK PERS tooldata toolWeldGunOld:=[TRUE,[[-60.8716,1.37706,439.061],[0.981627,0,0.190809,0]],[3,[0,0,1],[1,0,0,0],0,0,0]];
    TASK PERS tooldata toolLaserOld:=[TRUE,[[40.75,0,624.2],[1,0,0,0]],[3,[0,0,1],[1,0,0,0],0,0,0]];

    TASK PERS wobjdata wobjCurrent:=[FALSE,TRUE,"",[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobjTemp:=[FALSE,TRUE,"",[[-513,-36,67],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];

    ! postions for tool definition of weld gun
    TASK PERS jointtarget jtWeldGun1:=[[33.9715,20.0387,-37.4714,40.7221,-76.7952,140.901],[-465.218,39.3053,-432.676,9E+09,9E+09,9E+09]];
    TASK PERS jointtarget jtWeldGun2:=[[-32.1796,19.2448,-33.9675,-38.3929,-77.4064,216.26],[-465.218,39.3053,-432.676,9E+09,9E+09,9E+09]];
    TASK PERS jointtarget jtWeldGun3:=[[-5.50828,46.06,-53.3094,-6.06991,-86.2796,186.712],[-465.218,39.3056,-432.676,9E+09,9E+09,9E+09]];
    TASK PERS jointtarget jtWeldGun4:=[[0.135295,-0.165956,-0.113865,0.054787,-67.7203,179.854],[-465.218,39.3053,-432.676,9E+09,9E+09,9E+09]];
    TASK PERS jointtarget jtWeldGunZ:=[[-23.388,45.5074,-40.1349,34.9712,97.7934,-21.115],[7683.71,268.717,9E+09,9E+09,9E+09,9E+09]];
    TASK PERS jointtarget jtWeldGunX:=[[-11.2908,41.3683,-15.0054,38.5769,74.0462,-24.2474],[7683.71,268.717,9E+09,9E+09,9E+09,9E+09]];

    ! postions for tool definition of laser
    TASK PERS jointtarget jtLaser1:=[[1.23463,20.2117,49.1937,-0.0177981,19.9578,1.24529],[2710.99,9E+09,9E+09,9E+09,9E+09,9E+09]];
    TASK PERS jointtarget jtLaser2:=[[-4.77355,41.5571,14.5452,9.634,71.2439,-7.0717],[2710.99,9E+09,9E+09,9E+09,9E+09,9E+09]];
    TASK PERS jointtarget jtLaser3:=[[16.6953,31.7453,37.9034,-38.2116,46.0125,35.4493],[2710.99,9E+09,9E+09,9E+09,9E+09,9E+09]];
    TASK PERS jointtarget jtLaser4:=[[-15.8654,24.7616,60.5945,106.491,27.5027,-123.159],[2710.98,9E+09,9E+09,9E+09,9E+09,9E+09]];
    TASK PERS jointtarget jtLaserZ:=[[159.015,8.68591,36.5218,-1.07903,44.8617,-21.0289],[687.115,9E+09,9E+09,9E+09,9E+09,9E+09]];
    TASK PERS jointtarget jtLaserX:=[[161.523,27.5424,31.4752,-1.46627,31.0902,-18.0317],[687.112,9E+09,9E+09,9E+09,9E+09,9E+09]];

    TASK PERS jointtarget jointOrigin:=[[0,0,0,0,0,0],[0,0,0,9E+09,9E+09,9E+09]];
    TASK PERS jointtarget jointHome:=[[0,-60,40,0,60,0],[-513,-36,-500,9E+09,9E+09,9E+09]];
    TASK PERS jointtarget jointTransportation:=[[0,-60,45,0,60,0],[0,500,-500,9E+09,9E+09,9E+09]];
    TASK PERS jointtarget jointLoadIdentify:=[[-20,0,0,0,0,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]];
    TASK PERS jointtarget jointCurrent:=[[90,-75,45,90,45,0],[800,-500,-500,9E+9,9E+9,9E+9]];
    TASK PERS jointtarget jointHomeOld:=[[0,-60,40,0,60,0],[-513,-36,-500,9E+09,9E+09,9E+09]];

    TASK PERS robtarget robCurrent:=[[-209.736,482.664,216.543],[0.178965,-0.641361,0.732457,-0.141898],[-2,-1,1,1],[-800,500,0.00276417,9E+09,9E+09,9E+09]];

    PERS speeddata speedAir:=[7000,500,5000,1000];
    PERS speeddata speedAproach:=[7000,500,5000,1000];
    PERS speeddata speedWeld:=[500,500,5000,1000];
    PERS speeddata speedLaserScan:=[200,500,5000,1000];
    PERS speeddata speedLaserSickScan:=[500,500,5000,1000];
    PERS zonedata zoneAir:=[FALSE,200,300,300,30,300,30];
    PERS zonedata zoneAproach:=[FALSE,200,300,300,30,300,30];
    PERS zonedata zoneWeld:=[FALSE,200,300,300,30,300,30];
    PERS zonedata zoneScan:=[FALSE,200,300,300,30,300,30];

    PERS num numAcc:=100;
    PERS num numRamp:=100;

    PROC DefTCPofWeldGun()
        VAR num nMaxErr;
        VAR num nMeanErr;
        VAR num nUserInputFP:=0;
        VAR string sHeader;
        VAR string sMsg{5};
        VAR btnres nAnswer;
        VAR robtarget pTCP;
        VAR robtarget robtarWeldGun1;
        VAR robtarget robtarWeldGun2;
        VAR robtarget robtarWeldGun3;
        VAR robtarget robtarWeldGun4;

        sHeader:="Robot System"+" ("+GetTaskName()+")";
        sMsg{1}:=" Press Yes to run definition of";
        sMsg{2}:="               tool:  toolWeldGun.";
        sMsg{3}:=" Press No  to cancel.";
        sMsg{4}:="";
        sMsg{5}:="";
        UIMsgBox\Header:=sHeader,sMsg{1}\MsgLine2:=sMsg{2}\MsgLine3:=sMsg{3}\MsgLine4:=sMsg{4}\MsgLine5:=sMsg{5}\Buttons:=btnYesNo\Icon:=iconInfo\Result:=nAnswer;
        IF nAnswer=resNo THEN
            GOTO Calculate;
        ENDIF

        Stop\NoRegain;
        !MoveAbsJ jtWeldGun4,v100,fine,toolWeldGun;
        MoveAbsJ jtWeldGun1,v100,fine,toolWeldGun;
        Stop;
        !MoveAbsJ jtWeldGun4,v100,fine,toolWeldGun;
        MoveAbsJ jtWeldGun2,v100,fine,toolWeldGun;
        Stop;
        !MoveAbsJ jtWeldGun4,v100,fine,toolWeldGun;
        MoveAbsJ jtWeldGun3,v100,fine,toolWeldGun;
        Stop;
        MoveAbsJ jtWeldGun4,v100,fine,toolWeldGun;
        Stop;
        MoveAbsJ jtWeldGunZ,v100,fine,toolWeldGun;
        Stop;
        MoveAbsJ jtWeldGunX,v100,fine,toolWeldGun;
        Stop;

        Calculate:

        MToolTCPCalib jtWeldGun1,jtWeldGun2,jtWeldGun3,jtWeldGun4,toolWeldGun,nMaxErr,nMeanErr;
        !MToolRotCalib jtWeldGun4,jtWeldGunZ\XPos:=jtWeldGunX,toolWeldGun;
        TPErase;
        TPWrite " nMaxErr  ... "\Num:=nMaxErr;
        TPWrite " nMeanErr ... "\Num:=nMeanErr;
        robtarWeldGun1:=CalcRobT(jtWeldGun1,toolWeldGun);
        robtarWeldGun2:=CalcRobT(jtWeldGun2,toolWeldGun);
        robtarWeldGun3:=CalcRobT(jtWeldGun3,toolWeldGun);
        robtarWeldGun4:=CalcRobT(jtWeldGun4,toolWeldGun);
        TPWrite " Distance between point1 and point 4 is "\Num:=Distance(robtarWeldGun1.trans,robtarWeldGun4.trans);
        TPWrite " Distance between point2 and point 4 is "\Num:=Distance(robtarWeldGun2.trans,robtarWeldGun4.trans);
        TPWrite " Distance between point3 and point 4 is "\Num:=Distance(robtarWeldGun3.trans,robtarWeldGun4.trans);
        TPReadFK nUserInputFP,"",stEmpty,stEmpty,stEmpty,stEmpty,"OK";
        Stop;

        Calibrate:
        MoveAbsJ jtWeldGun4,v100,fine,toolWeldGun;
        pTCP:=CRobT(\Tool:=toolWeldGun);
        MoveL RelTool(pTCP,0,0,0),v100,fine,toolWeldGun;
        MoveL Reltool(pTCP,0,0,-30),v100,fine,toolWeldGun;
        MoveL Reltool(pTCP,0,0,30),v100,fine,toolWeldGun;
    ENDPROC

    PROC DefTCPofLaser()
        VAR num nMaxErr;
        VAR num nMeanErr;
        VAR num nUserInputFP:=0;
        VAR string sHeader;
        VAR string sMsg{5};
        VAR btnres nAnswer;
        VAR robtarget pTCP;
        VAR robtarget robtarLaser1;
        VAR robtarget robtarLaser2;
        VAR robtarget robtarLaser3;
        VAR robtarget robtarLaser4;

        sHeader:="Robot System"+" ("+GetTaskName()+")";
        sMsg{1}:=" Press Yes to run definition of";
        sMsg{2}:="               tool:  toolLaser.";
        sMsg{3}:=" Press No  to cancel.";
        sMsg{4}:="";
        sMsg{5}:="";
        UIMsgBox\Header:=sHeader,sMsg{1}\MsgLine2:=sMsg{2}\MsgLine3:=sMsg{3}\MsgLine4:=sMsg{4}\MsgLine5:=sMsg{5}\Buttons:=btnYesNo\Icon:=iconInfo\Result:=nAnswer;
        IF nAnswer=resNo THEN
            GOTO Calculate;
        ENDIF

        Stop\NoRegain;
        MoveAbsJ jtLaser1,v100,fine,toolLaser;
        Stop;
        MoveAbsJ jtLaser2,v100,fine,toolLaser;
        Stop;
        MoveAbsJ jtLaser3,v100,fine,toolLaser;
        Stop;
        MoveAbsJ jtLaser4,v100,fine,toolLaser;
        Stop;
        MoveAbsJ jtLaserZ,v100,fine,toolLaser;
        Stop;
        MoveAbsJ jtLaserX,v100,fine,toolLaser;
        Stop;

        Calculate:

        MToolTCPCalib jtLaser1,jtLaser2,jtLaser3,jtLaser4,toolLaser,nMaxErr,nMeanErr;
        !MToolRotCalib jtLaser4,jtLaserZ\XPos:=jtLaserX,toolLaser;
        TPErase;
        TPWrite " nMaxErr  ... "\Num:=nMaxErr;
        TPWrite " nMeanErr ... "\Num:=nMeanErr;
        robtarLaser1:=CalcRobT(jtLaser1,toolLaser);
        robtarLaser2:=CalcRobT(jtLaser2,toolLaser);
        robtarLaser3:=CalcRobT(jtLaser3,toolLaser);
        robtarLaser4:=CalcRobT(jtLaser4,toolLaser);
        TPWrite " Distance between point1 and point 4 is "\Num:=Distance(robtarLaser1.trans,robtarLaser4.trans);
        TPWrite " Distance between point2 and point 4 is "\Num:=Distance(robtarLaser2.trans,robtarLaser4.trans);
        TPWrite " Distance between point3 and point 4 is "\Num:=Distance(robtarLaser3.trans,robtarLaser4.trans);
        TPReadFK nUserInputFP,"",stEmpty,stEmpty,stEmpty,stEmpty,"OK";
        Stop;

        Calibrate:
        MoveAbsJ jtLaser4,v100,fine,toolLaser;
        pTCP:=CRobT(\Tool:=toolLaser);
        MoveL RelTool(pTCP,0,0,0),v100,fine,toolLaser;
        MoveL Reltool(pTCP,0,0,-70),v100,fine,toolLaser;
        MoveL Reltool(pTCP,0,0,5),v100,fine,toolLaser;

    ENDPROC

    PROC MoveSpecialPoint()
        MoveAbsJ jointHome,v1000,fine,toolWeldGun\WObj:=wobj0;
        Stop;
        MoveAbsJ jointOrigin,v1000,fine,toolWeldGun\WObj:=wobj0;
        Stop;
        MoveAbsJ jointTransportation,v1000,fine,toolWeldGun\WObj:=wobj0;
        Stop;
        MoveAbsJ jointLoadIdentify,speedAir,fine,toolWeldGun\WObj:=wobj0;
        Stop;
        MoveAbsJ jointCurrent,speedAir,fine,toolWeldGun\WObj:=wobj0;
        Stop;
        MoveJ robCurrent,speedAir,fine,toolWeldGun\WObj:=wobj0;
        Stop;
    ENDPROC

    PROC SaveModule()
        VAR string date;
        VAR num numYear;
        VAR bool ok;
        date:=CDate();
        ok:=StrToVal(StrPart(date,1,4),numYear);
        IF GetTaskName()="T_ROB1" AND numYear<=2021 THEN
            boolSaveModule:=TRUE;
        ENDIF
        IF boolSaveModule=FALSE THEN
            RETURN ;
        ELSE
            boolSaveModule:=FALSE;
        ENDIF

        Save\TaskName:="T_ROB1","SharedModule"\FilePath:="HOME:/RAATCfg/RAPID/TASK1/PROGMOD/SharedModule.mod";

        Save\TaskName:="T_ROB1","GeneralModule"\FilePath:="HOME:/RAATCfg/RAPID/TASK1/PROGMOD/GeneralModule.mod";
        Save\TaskName:="T_ROB1","CalibDataModule"\FilePath:="HOME:/RAATCfg/RAPID/TASK1/PROGMOD/CalibDataModule.mod";
        Save\TaskName:="T_ROB1","MainModule"\FilePath:="HOME:/RAATCfg/RAPID/TASK1/PROGMOD/MainModule.mod";
        Save\TaskName:="T_ROB1","WorldZoneModule"\FilePath:="HOME:/RAATCfg/RAPID/TASK1/PROGMOD/WorldZoneModule.mod";
        Save\TaskName:="T_ROB1","TaskModule"\FilePath:="HOME:/RAATCfg/RAPID/TASK1/PROGMOD/TaskModule.mod";
        Save\TaskName:="T_ROB1","ProcessDataModule"\FilePath:="HOME:/RAATCfg/RAPID/TASK1/PROGMOD/ProcessDataModule.mod";
        Save\TaskName:="T_ROB1","JobWeldModule"\FilePath:="HOME:/RAATCfg/RAPID/TASK1/PROGMOD/JobWeldModule.mod";
        Save\TaskName:="T_ROB1","YAMLModule"\FilePath:="HOME:/RAATCfg/RAPID/TASK1/PROGMOD/YAMLModule.mod";

        Save\TaskName:="T_ROB1","AutoCal2"\FilePath:="HOME:/RAATCfg/RAPID/TASK1/SYSMOD/AutoCal2.sys";
        Save\TaskName:="T_ROB1","AutoCal2b"\FilePath:="HOME:/RAATCfg/RAPID/TASK1/SYSMOD/AutoCal2b.sys";
        Save\TaskName:="T_ROB1","CommSF"\FilePath:="HOME:/RAATCfg/RAPID/TASK1/SYSMOD/CommSF.sys";
        Save\TaskName:="T_ROB1","TestASFMFunctions"\FilePath:="HOME:/RAATCfg/RAPID/TASK1/PROGMOD/TestASFMFunctions.mod";
        Save\TaskName:="T_ROB1","TestAutoCal"\FilePath:="HOME:/RAATCfg/RAPID/TASK1/PROGMOD/TestAutoCal.mod";

        Save\TaskName:="T_ROB1","WeldTestModule"\FilePath:="HOME:/RAATCfg/RAPID/TASK1/PROGMOD/WeldTestModule.mod";
        Save\TaskName:="T_ROB1","SmarTacTestModule"\FilePath:="HOME:/RAATCfg/RAPID/TASK1/PROGMOD/SmarTacTestModule.mod";
        Save\TaskName:="T_ROB1","TestModule"\FilePath:="HOME:/RAATCfg/RAPID/TASK1/PROGMOD/TestModule.mod";

        Save\TaskName:="T_ROB1","Template_0001_Module"\FilePath:="HOME:/RAATCfg/RAPID/TASK1/PROGMOD/Template_0001_Module.mod";
        Save\TaskName:="T_ROB1","Template_1001_Module"\FilePath:="HOME:/RAATCfg/RAPID/TASK1/PROGMOD/Template_1001_Module.mod";
        Save\TaskName:="T_ROB1","Template_1002_Module"\FilePath:="HOME:/RAATCfg/RAPID/TASK1/PROGMOD/Template_1002_Module.mod";

        Logging "Modules are saved";
    ENDPROC

ENDMODULE