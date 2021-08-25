MODULE MainModule
    !*****************************************************
    !Module Name:   MainModule
    !Version:       1.0
    !Description:   
    !Date:          2021-3-25
    !Author:        Michael
    !*****************************************************

    PERS bool bSafeMutex:=FALSE;
    TASK PERS num numPartCount:=172;
    TASK PERS num numTimeConsumeTotal:=377.429;
    TASK PERS num numTimeServiceConsumeTotal:=0;
    TASK PERS num numTimeConsumeLast:=0;
    TASK PERS num numTimeConsumeCurrent:=0;

    VAR partdata partCurrent;
    VAR string strPartCurrentName;
    VAR clock clockPartTimeConsume;
    VAR clock clockServiceTimeConsume;

    CONST ee_event ee_eventStart:=[EE_START,"Initialize","",0,1];
    CONST ee_event ee_eventCycleStart:=[EE_CYCLE_START,"CycleStart","",0,1];
    CONST ee_event ee_eventPreProd:=[EE_PRE_PROD,"PrePart","",0,1];
    CONST ee_event ee_eventPostProd:=[EE_POST_PROD,"PostPart","",0,1];
    CONST ee_event ee_eventProcStart:=[EE_PROC_START,"PreService","",0,1];
    CONST ee_event ee_eventPostProc:=[EE_POST_PROC,"PostService","",0,1];

    PROC main()
        !InhibWeld FALSE\Weld\Weave\Track;
        SaveModule;
        !JobWeld;
        ExecEngine;
    ENDPROC

    PROC Initialize()
        VAR bool bRelSafeMutex;
        VAR string sHeader;
        VAR num nAnswer;
        VAR string stButtons{2}:=["MANUAL","AUTO"];
        VAR string stMsgArray{6}:=["Robot not in home position","Please choose MANUAL or AUTO","","MANUAL => move robot by joystick to home position","","AUTO   => robot moves directly to home position"];

        AccSet numAcc,numRamp;
        speedAir:=vmax;
        speedAproach:=vmax;

        !SetFileHandlerLogLevel\INFO;
        !SetTPHandlerLogLevel\INFO;
        ClearOldLogFiles;

        SetDO sdoRunPart_1,0;
        SetDO sdoRunMenu_1,0;
        SetGO sgoPMPLC_1,101;

        SetGO sgoPLCCode_1,0;
        SetDO sdoErrorStrobeOut_1,0;
        SetGO sgoPMError_1,0;
        SetDO Do35_Success_1,0;
        SetGO Go112_WeldCompleted,0;
        SetGO Go80_WeldingStatus,0;

        IF RobOS()=FALSE THEN
            MovetoHome;
        ELSE
            WaitTestAndSet bSafeMutex;
            bRelSafeMutex:=TRUE;

            WHILE doSysOutAtHome_1=0 DO
                sHeader:="Home position ("+GetTaskName()+")";
                IF OpMode()=OP_MAN_PROG THEN
                    nAnswer:=UIMessageBox(\Header:=sHeader\MsgArray:=stMsgArray\BtnArray:=stButtons\Icon:=iconWarning);
                    IF (nAnswer=1) THEN
                        Stop\AllMoveTasks;
                        TPErase;
                        !! jog to safe position
                    ELSE
                        MovetoHome;
                    ENDIF
                ELSE
                    UIMsgBox\Header:=sHeader,""\MsgLine2:="Switch to Manual Mode."\MsgLine3:="Moving Robot SLOWLY to Home Position."\Buttons:=btnOK\Icon:=iconWarning;
                ENDIF
            ENDWHILE
            bSafeMutex:=FALSE;
            bRelSafeMutex:=FALSE;
        ENDIF

    UNDO
        IF (bRelSafeMutex) bSafeMutex:=FALSE;
    ENDPROC

    PROC MovetoHome()
        VAR jointtarget jointCur;
        EOffsOff;
        WHILE jointHome.robax<>jointHomeOld.robax DO
            UIMsgBox\Header:="Home Position Changed",""\MsgLine2:="Robot Home Position has been changed."\MsgLine3:="Please check it."\MsgLine4:="Restart the robot controller to update it."\Buttons:=btnOK\Icon:=iconWarning;
        ENDWHILE
        jointCur:=CJointT();
        jointHome.extax:=jointCur.extax;
        jointHome.extax.eax_c:=extGantryHome.eax_c;
        MoveAbsJ jointHome,speedAir,fine,toolWeldGun\WObj:=wobj0;
    ENDPROC

    PROC CycleStart()
        PMgrGetNextPart 1,partCurrent\InstanceName:=strPartCurrentName;
        Logging\INFO,"CycleStart "+PMgrTaskName()+" : "+partCurrent.pathProcName;
        numTimeConsumeTotal:=0;
        numTimeConsumeLast:=0;
        numTimeConsumeCurrent:=0;
        ClkReset clockPartTimeConsume;
        ClkStart clockPartTimeConsume;

    ENDPROC

    PROC PrePart()
        Logging "PrePart: "+ValToStr(partCurrent.plcCode)+"...";
        SetGO Go112_WeldCompleted,0;
        SetGO Go80_WeldingStatus,0;
        SetDO Do35_Success_1,0;

        LoadModelData;
    ENDPROC

    PROC PostPart()
        Logging "PostPart...";
        MovetoHome;
        SetDO Do35_Success_1,1;

        Incr numPartCount;
        numTimeConsumeTotal:=ClkRead(clockPartTimeConsume);
        Logging "PartCount="+ValToStr(numPartCount)+", TimeConsume="+ValToStr(numTimeConsumeTotal)\CloseFile;
        ClkStop clockPartTimeConsume;
    ENDPROC

    PROC PreService()
        Logging "PreService...";
        SetDO Do35_Success_1,0;
        numTimeServiceConsumeTotal:=0;
        numTimeConsumeLast:=0;
        numTimeConsumeCurrent:=0;
        ClkReset clockServiceTimeConsume;
        ClkStart clockServiceTimeConsume;
    ENDPROC

    PROC PostService()
        Logging "PostService...";
        MovetoHome;
        SetDO Do35_Success_1,1;

        numTimeServiceConsumeTotal:=ClkRead(clockServiceTimeConsume);
        Logging "TimeServiceConsume="+ValToStr(numTimeServiceConsumeTotal)\CloseFile;
        ClkStop clockServiceTimeConsume;
    ENDPROC

ENDMODULE