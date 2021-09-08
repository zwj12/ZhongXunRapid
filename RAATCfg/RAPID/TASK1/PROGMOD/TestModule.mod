MODULE TestModule
    !*****************************************************
    !Module Name: TestModule
    !Version:     1.0
    !Description: 
    !Date:        2021-1-6
    !Author:      Michael
    !*****************************************************

    !2021-8-11, Michael, Add GetBaseFramePosZ, DepartGantry, modify MoveGanrtyQuadrantByWobjCur

    TASK PERS menudata mdMoveGanrtyQuadrant:=["Move Ganrty Quadrant By WobjCur","","MoveGanrtyQuadrantByWobjCur",1,"",255,True,2,100,False,203];
    TASK PERS menudata mdMoveWeldGunToGanrtyBaseXZ:=["Move WeldGun To Ganrty Base Plane XZ","","MoveWeldGunToGanrtyBaseXZ",1,"",255,True,2,0,False,204];
    TASK PERS menudata mdMoveLaserToGanrtyBaseXZ:=["Move Laser To Ganrty Base Plane XZ","","MoveLaserToGanrtyBaseXZ",1,"",255,True,2,0,False,205];
    TASK PERS menudata mdLaserOn:=["Laser On","","LASER_ON",1,"",255,True,2,0,False,206];
    TASK PERS menudata mdLaserMute:=["Laser Off","","LASER_Mute",1,"",255,True,2,0,False,207];
    
    TASK PERS jointtarget jointWeldGunPlaneXZ:=[[90,-45,45,0,-68,180],[-875,0,-600,9E+09,9E+09,9E+09]];
    TASK PERS jointtarget jointLaserPlaneXZ:=[[66.8628,-41.2321,43.0137,-5.46308E-05,-91.7816,113.137],[578.229,0,-600,9E+09,9E+09,9E+09]];

    PERS robtarget pWobjX1:=[[-1843.85,70.55,208.53],[0.231263,-0.189593,-0.879297,0.370687],[0,0,0,4],[-1810.13,354.262,201.219,9E+09,9E+09,9E+09]];
    PERS robtarget pWobjX2:=[[-1518.46,70.55,208.53],[0.231263,-0.189594,-0.879297,0.370687],[0,0,0,4],[-1484.74,354.262,201.219,9E+09,9E+09,9E+09]];
    PERS robtarget pWobjY1:=[[-2027.90,437.15,211.77],[0.401347,0.686043,-0.584941,-0.161585],[0,0,-2,4],[-1744.2,354.262,201.219,9E+09,9E+09,9E+09]];
    PERS robtarget pWobjX1_Found:=[[-1975.74,-58.6,60],[0.231263,-0.189593,-0.879297,0.370687],[0,0,0,4],[-1810.13,354.262,201.219,9E+09,9E+09,9E+09]];
    PERS robtarget pWobjX2_Found:=[[-1649.02,-53.19,62.72],[0.231263,-0.189594,-0.879297,0.370687],[0,0,0,4],[-1484.74,354.262,201.219,9E+09,9E+09,9E+09]];
    PERS robtarget pWobjY1_Found:=[[-2172.42,347.84,67.22],[0.401347,0.686043,-0.584941,-0.161585],[0,0,-2,4],[-1744.2,354.262,201.219,9E+09,9E+09,9E+09]];
    PERS pose poseFrame:=[[-2165.56,-61.7432,58.4197],[0.999899,0.010774,-0.00407261,0.00832256]];

    PERS robtarget pSeamFindLaserTest:=[[-425.42,-606.23,742.08],[0.0241331,0.73834,-0.667074,0.0963572],[-1,-1,0,1],[-959.514,-320.65,-497.97,9E+09,9E+09,9E+09]];
    PERS robtarget pSeamFindLaserResult:=[[-439.18,-587.87,802.39],[0.0241331,0.73834,-0.667074,0.0963572],[-1,-1,0,1],[-959.514,-320.65,-497.97,9E+09,9E+09,9E+09]];
    PERS robtarget pSeamFindGunCheck:=[[-439.18,-587.87,802.39],[0.150973,0.706388,-0.650213,0.23547],[-1,-1,0,1],[-959.514,-320.649,-497.97,9E+09,9E+09,9E+09]];
    PERS robtarget pSeamFindGunCheck2:=[[-404.32,-589.05,799.52],[0.0282983,-0.53689,0.714207,-0.448171],[-1,0,0,1],[-1178.69,-205.94,-411.421,9E+09,9E+09,9E+09]];

    LOCAL PERS robtarget pQ2_X1:=[[-75,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ2_X2:=[[-30,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ2_Y1:=[[0,75,0],[0.183013,-0.612372,0.683013,-0.353553],[-1,0,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ2_Y2:=[[0,200,0],[0.183013,-0.612372,0.683013,-0.353553],[-1,0,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ2_Z1:=[[0,0,50],[0.562422,0.303603,0.732963,-0.232963],[-1,-2,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ2_Z2:=[[0,0,250],[0.232963,0.732963,-0.303603,0.562422],[-2,-1,1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ2_X1_Found:=[[-75,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ2_X2_Found:=[[-30,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ2_Y1_Found:=[[-404.32,-589.05,799.52],[0.0282975,-0.536891,0.714207,-0.44817],[-1,0,0,1],[-1178.69,-205.94,-411.421,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pQ2_Y2_Found:=[[-498.84,172.65,70.48],[0.183013,-0.612372,0.683013,-0.353553],[-1,0,-1,1],[-800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pQ2_Z1_Found:=[[0,0,50],[0.562422,0.303603,0.732963,-0.232963],[-1,-2,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ2_Z2_Found:=[[-495.92,-28.34,304.38],[0.232963,0.732963,-0.303603,0.562422],[-2,-1,1,1],[-800,500,456,9E+09,9E+09,9E+09]];

    LOCAL PERS robtarget pSearchSeam1_1:=[[-2140.43,-699.06,868.80],[0.245037,-0.668167,-0.634244,0.302066],[0,-1,1,1],[-1391.81,-596.159,-500,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSearchSeam1_2:=[[-2140.19,-435.99,868.79],[0.245038,-0.668165,-0.634245,0.302067],[1,0,0,1],[-1391.81,-596.159,-500,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound1_1:=[[-2180.27,-704.09,812.73],[0.270598,0.653282,-0.653282,-0.270598],[0,-1,-1,1],[800,500,180,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound1_2:=[[-2175.4,-441.18,809.63],[0.270598,0.653282,-0.653282,-0.270598],[0,-1,-1,1],[800,500,180,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam1_1:=[[-2178.87,-726.96,819.88],[0.361553,-0.713528,-0.575838,0.169024],[0,-1,1,1],[-1391.81,-596.159,-500,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam1_2:=[[-2174.26,-415.91,816.71],[0.361553,-0.713527,-0.575838,0.169025],[1,0,0,1],[-1391.81,-596.158,-500,9E+09,9E+09,9E+09]];
    LOCAL PERS pos posAOSeam1_1:=[2,0,6];
    LOCAL PERS pos posAOSeam1_2:=[2,0,6];
    LOCAL PERS pose peSeam1_1:=[[0.154297,-0.0455322,-0.977905],[1,0,0,0]];
    LOCAL PERS pose peSeam1_2:=[[1.32886,-0.0718689,-1.36847],[1,0,0,0]];

    LOCAL PERS robtarget pSearchSeam2_1:=[[-31.43,-70.00,300.00],[0.177986,0.679656,-0.621973,-0.345742],[1,-1,-2,1],[859.81,-197.86,180.003,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSearchSeam2_2:=[[-31.43,100,300],[0.177986,0.679656,-0.621973,-0.345743],[1,-1,-2,1],[859.81,-197.86,180.003,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound2_1:=[[-17.23,-86.51,310.13],[0.270598,0.653282,-0.653282,-0.270598],[0,-1,-1,1],[800,500,180,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound2_2:=[[-20.74,83.55,309.48],[0.270598,0.653282,-0.653282,-0.270598],[0,-1,-1,1],[800,500,180,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam2_1:=[[-14.43,-149.11,300.63],[0.168364,0.836144,-0.497818,-0.157143],[0,-1,-1,1],[859.81,-197.861,180.002,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam2_2:=[[14.22,156.44,301.36],[0.168364,0.836144,-0.497818,-0.157143],[1,-1,-2,1],[859.81,-197.861,180.002,9E+09,9E+09,9E+09]];
    LOCAL PERS pos posAOSeam2_1:=[17,0,-10];
    LOCAL PERS pos posAOSeam2_2:=[17,-8,-7];
    LOCAL PERS pose peSeam2_1:=[[-49.3429,-18.0947,-58.3237],[1,0,0,0]];
    LOCAL PERS pose peSeam2_2:=[[-19.4495,-8.72232,0.844177],[1,0,0,0]];

    PROC MoveGanrtyQuadrantByWobjCur()
        VAR num numQuadrant;
        VAR extjoint extjointGantryOffsetCur;
        VAR pos posGantryOffsetDirection:=[0,0,0];
        numQuadrant:=GetQuadrant();
        IF numQuadrant=-1 THEN
            RETURN ;
        ELSE
            posGantryOffsetDirection:=GetGantryOffsetDirection(numQuadrant);
        ENDIF
        extjointGantryOffsetCur.eax_a:=extjointGantryOffset.eax_a*posGantryOffsetDirection.x;
        extjointGantryOffsetCur.eax_b:=extjointGantryOffset.eax_b*posGantryOffsetDirection.y;
        IF numQuadrant=14 OR numQuadrant=23 THEN
            extjointGantryOffsetCur.eax_c:=extjointGantryOffset.eax_c-300;
        ELSE
            extjointGantryOffsetCur.eax_c:=extjointGantryOffset.eax_c;
        ENDIF
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
        Stop;
    ENDPROC

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

    PROC MoveLaserToGanrtyBaseXZ()
        jointCurrent:=CJointT();
        jointLaserPlaneXZ.extax.eax_a:=jointCurrent.extax.eax_a;
        MoveAbsJ jointLaserPlaneXZ,speedAir,fine,toolWeldGun\WObj:=wobj0;
        LASER_ON;
        Stop;
    ENDPROC

    PROC MoveWeldGunToGanrtyBaseXZ()
        jointCurrent:=CJointT();
        jointWeldGunPlaneXZ.extax.eax_a:=jointCurrent.extax.eax_a;
        MoveAbsJ jointWeldGunPlaneXZ,speedAir,fine,toolWeldGun\WObj:=wobj0;
        Stop;
    ENDPROC

    PROC SearchWobjOrigin_Quadrant1()
        IF NOT ASFMu_Initialize(Laser_IP_Add,2,TRUE,TRUE,TRUE,toolWeldGun,wobj0) THEN
            TPWrite "The socket between laser and robot error Can't connect to vision controller";
            stop;
        ENDIF
        MoveJ pWobjX1,speedAproach,fine,toolWeldGun\WObj:=wobj0;
        SeamFind scanJoint2.joint_no\FoundPoint:=pWobjX1_Found,pWobjX1,speedAproach,js1,SenSch1,toolWeldGun\Wobj:=wobj0;
        MoveJ pWobjX2,speedAproach,fine,toolWeldGun\WObj:=wobj0;
        SeamFind scanJoint2.joint_no\FoundPoint:=pWobjX2_Found,pWobjX2,speedAproach,js1,SenSch1,toolWeldGun\Wobj:=wobj0;
        MoveJ pWobjY1,speedAproach,fine,toolWeldGun\WObj:=wobj0;
        SeamFind scanJoint2.joint_no\FoundPoint:=pWobjY1_Found,pWobjY1,speedAproach,js1,SenSch1,toolWeldGun\Wobj:=wobj0;
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
        SeamFind scanJoint2.joint_no\FoundPoint:=pWobjX1_Found,pWobjX1,speedAproach,js1,SenSch1,toolWeldGun\Wobj:=wobj0;
        MoveJ pWobjX2,speedAproach,fine,toolWeldGun\WObj:=wobj0;
        SeamFind scanJoint2.joint_no\FoundPoint:=pWobjX2_Found,pWobjX2,speedAproach,js1,SenSch1,toolWeldGun\Wobj:=wobj0;
        MoveJ pWobjY1,speedAproach,fine,toolWeldGun\WObj:=wobj0;
        SeamFind scanJoint2.joint_no\FoundPoint:=pWobjY1_Found,pWobjY1,speedAproach,js1,SenSch1,toolWeldGun\Wobj:=wobj0;
        poseFrame:=DefFrame(pWobjX1_Found,pWobjX2_Found,pWobjY1_Found\Origin:=3);
        Logging "poseFrame.trans:="+ValToStr(poseFrame.trans);
        Logging "poseFrame.rot:="+GetEulerAngleString(poseFrame.rot);
        wobjCurrent.uframe:=poseFrame;
    ENDPROC

    PROC LaserSeamFindTest()
        MoveAbsJ [[-74.5798,2.54433,-3.26008,-7.51191,-80.6759,69.4347],[-959.514,-320.65,-497.97,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobj0;
        IF RobOS() THEN
            IF NOT ASFMu_Initialize(Laser_IP_Add,2,TRUE,TRUE,TRUE,toolWeldGun,wobj0) THEN
                TPWrite "The socket between laser and robot error Can't connect to vision controller";
                stop;
            ENDIF
        ENDIF
        ScanSeamByLaser pSeamFindLaserResult,pSeamFindLaserTest,scanJoint3,speedAproach,toolLaser\WObj:=wobj0;
        pSeamFindGunCheck.trans:=pSeamFindLaserResult.trans;
        MoveJ pSeamFindGunCheck,speedAproach,fine,toolWeldGun\WObj:=wobj0;
    ENDPROC

    PROC TestWobj0()
        LoadGantryOffset;
        MoveAbsJ [[-51.1047,-50.0305,43.4255,14.5498,-52.3183,77.5438],[-800,500,313.838,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;

        IF RobOS() THEN
            IF NOT ASFMu_Initialize(Laser_IP_Add,2,TRUE,TRUE,TRUE,toolWeldGun,wobj0) THEN
                TPWrite "The socket between laser and robot error Can't connect to vision controller";
                stop;
            ENDIF
        ENDIF

        IF RobOS() THEN
            IF NOT ASFMu_Clear() THEN
                Stop;
            ENDIF
            IF NOT ASFMu_Initialize(Laser_IP_Add,2,TRUE,TRUE,TRUE,toolWeldGun,wobj0) THEN
                TPWrite "The socket between laser and robot error Can't connect to vision controller";
                stop;
            ENDIF
        ENDIF
        Stop;

        !ScanSeamByLaser pQ2_Y1_Found,pQ2_Y1,scanJoint2,speedAproach,toolLaser\WObj:=wobjCurrent;
        !ScanSeamByLaser pQ2_Y2_Found,pQ2_Y2,scanJoint2,speedAproach,toolLaser\WObj:=wobjCurrent;

        MoveJ pQ2_Y1,speedAproach,fine,toolLaser\WObj:=wobjCurrent;
        !SeamFind 2\FoundPoint:=pQ2_Y1_Found,pQ2_Y1,speedAproach,js1,SenSch1,toolLaser\WObj:=wobjCurrent;

        robCurrent:=CRobT(\Tool:=toolWeldGun);
        MoveJ robCurrent,speedAproach,fine,toolWeldGun\WObj:=wobjCurrent;
        SeamFind 3\FoundPoint:=pQ2_Y1_Found,robCurrent,speedAproach,js1,SenSch1,toolWeldGun\WObj:=wobjCurrent;
        !MoveJ pQ2_Y1,speedAproach,fine,toolLaser\WObj:=wobjCurrent;
        !SeamFind 2\FoundPoint:=pQ2_Y2_Found,pQ2_Y2,speedAproach,js1,SenSch1,toolLaser\WObj?WObj;
        !MoveAbsJ [[-0.442793,-43.1611,0,20,-65.6482,5.56909E-9],[-800,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;


        pSeamFindGunCheck2.trans:=pQ2_Y1_Found.trans;
        MoveJ pSeamFindGunCheck2,speedAproach,fine,toolWeldGun\WObj:=wobjCurrent;
        Stop;
        pSeamFindGunCheck2.trans:=pQ2_Y2_Found.trans;
        MoveJ pSeamFindGunCheck2,speedAproach,fine,toolWeldGun\WObj:=wobjCurrent;

    UNDO
        EOffsOff;
    ENDPROC

    PROC RelToolTCP()
        toolWeldGun.tframe.trans:=PoseVect(toolWeldGunLast.tframe,[0,0,0]);
        Logging "tframe1="+ValToStr(toolWeldGun.tframe);
        toolWeldGun.tframe:=PoseMult(toolWeldGunLast.tframe,[[0,0,30],[1,0,0,0]]);
        Logging "tframe2="+ValToStr(toolWeldGun.tframe);
    ENDPROC

    PROC WeldTestByLaser_1()
        LASER_ON;
        MoveAbsJ [[58.0029,-53.0794,28.1659,-42.2458,-29.5279,155.744],[-1391.81,-596.159,-500,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobj0;
        ScanSeamByLaser pSeamFound1_1,pSearchSeam1_1,scanJoint1,speedAproach,toolLaser\WObj:=wobj0;
        ScanSeamByLaser pSeamFound1_2,pSearchSeam1_2,scanJoint1,speedAproach,toolLaser\WObj:=wobj0;
        MoveAbsJ [[146.242,-38.2939,14.1137,51.7568,-52.7271,8.72442],[-1391.81,-596.159,-500,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobj0;

        MoveAbsJ [[70.158,-38.7462,15.6391,-27.1765,-24.5978,133.329],[-1391.81,-596.159,-500,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobj0;

        RefreshDisp\X\Y\Z,peSeam1_1,posAOSeam1_1,pSeam1_1,pSeamFound1_1,pSeamFound1_2;
        MoveJ GetAproachTarget(pSeam1_1),speedAir,zoneAir,toolWeldGun\WObj:=wobj0;
        ArcLStart pSeam1_1,speedAproach,seamShared,weldShared_1\Weave:=weaveShared_1,fine,toolWeldGun\WObj:=wobj0\Track:=trackShared_1\SeamName:="WeldSeam";
        RefreshDisp\X\Y\Z,peSeam1_2,posAOSeam1_2,pSeam1_2,pSeamFound1_1,pSeamFound1_2;
        ArcLEnd pSeam1_2,speedWeld,seamShared,weldShared_1\Weave:=weaveShared_1,fine,toolWeldGun\WObj:=wobj0\Track:=trackShared_1;
        MoveL GetAproachTarget(pSeam1_2),speedAir,zoneAir,toolWeldGun\WObj:=wobj0;
        PDispOff;

        MoveAbsJ [[143.344,-22.243,-2.27192,51.8652,-50.4449,10.4722],[-1391.81,-596.159,-500,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobj0;

    UNDO
        PDispOff;
    ENDPROC

    PROC WeldTestByLaser_2()
        LASER_ON;
        MoveAbsJ [[133.323,-63.7916,29.0313,26.8015,-14.0673,-149.248],[856.738,-202.507,-177.685,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobj0;
        ScanSeamByLaser pSeamFound2_1,pSearchSeam2_1,scanJoint2,speedAproach,toolLaser\WObj:=wobj0;
        ScanSeamByLaser pSeamFound2_2,pSearchSeam2_2,scanJoint2,speedAproach,toolLaser\WObj:=wobj0;
        MoveAbsJ [[115.057,-5.43864,10.6614,9.15885,-50.2402,-123.079],[859.811,-197.86,180.003,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobj0;

        MoveAbsJ [[77.6642,-20.5292,21.7224,-21.8752,-52.8969,-92.4213],[859.811,-197.861,180.002,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobj0;

        RefreshDisp\X\Y\Z,peSeam2_1,posAOSeam2_1,pSeam2_1,pSeamFound2_1,pSeamFound2_2;
        MoveJ GetAproachTarget(pSeam2_1),speedAir,zoneAir,toolWeldGun\WObj:=wobj0;
        ArcLStart pSeam2_1,speedAproach,seamShared,weldShared_2\Weave:=weaveShared_2,fine,toolWeldGun\WObj:=wobj0\Track:=trackShared_2\SeamName:="WeldSeam";
        RefreshDisp\X\Y\Z,peSeam2_2,posAOSeam2_2,pSeam2_2,pSeamFound2_1,pSeamFound2_2;
        ArcLEnd pSeam2_2,speedWeld,seamShared,weldShared_2\Weave:=weaveShared_2,fine,toolWeldGun\WObj:=wobj0\Track:=trackShared_2;
        MoveL GetAproachTarget(pSeam2_2),speedAir,zoneAir,toolWeldGun\WObj:=wobj0;
        PDispOff;

        MoveAbsJ [[113.513,-23.939,11.7589,2.23008,-56.7628,-137.662],[859.811,-197.862,-204.744,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobj0;

    UNDO
        PDispOff;
    ENDPROC

ENDMODULE