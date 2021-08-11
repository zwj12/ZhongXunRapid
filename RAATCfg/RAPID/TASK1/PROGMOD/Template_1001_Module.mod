MODULE Template_1001_Module
    !*****************************************************
    !Module Name:   Template_1001_Module
    !Version:       1.0
    !Description:   All the targets are coordinated in its self coordinate system
    !Date:          2021-6-30
    !Author:        Michael
    !*****************************************************

    LOCAL PERS num numPartCount:=29;

    LOCAL PERS jointtarget jointReadyQuadrant1:=[[0,-75,-15,0,75,0],[-1665.21,438.067,-400,9E+09,9E+09,9E+09]];
    LOCAL PERS jointtarget jointReadyQuadrant2:=[[0,0,0,0,-30,180],[500,500,-1000,9E+09,9E+09,9E+09]];
    LOCAL PERS jointtarget jointReadyQuadrant3:=[[-90,75,-180,0,-66.9758,30],[-1685.24,-562,-407.129,9E+09,9E+09,9E+09]];
    LOCAL PERS jointtarget jointReadyQuadrant4:=[[-90,74.9999,-180,-30,-66.9758,75],[-1685.24,-562,-407.129,9E+09,9E+09,9E+09]];

    !For oframe searching
    LOCAL PERS robtarget pX1:=[[239.14,0.70,-19.00],[3.03262E-6,-2.72849E-6,0.923879,-0.382685],[-1,0,1,4],[0,500,0,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pX2:=[[439.14,0.7,-19],[3.03263E-6,-2.72845E-6,0.923879,-0.382685],[-1,0,1,4],[0,500,0,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pY1:=[[0.12,311.37,-19],[0.270599,0.653284,-0.65328,-0.270595],[-2,0,1,1],[0,500,0,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pX1_Found:=[[239.14,0.7,-19],[3.03262E-6,-2.72849E-6,0.923879,-0.382685],[-1,0,1,4],[0,500,0,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pX2_Found:=[[439.14,0.7,-19],[3.03263E-6,-2.72845E-6,0.923879,-0.382685],[-1,0,1,4],[0,500,0,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pY1_Found:=[[0.12,311.37,-19],[0.270599,0.653284,-0.65328,-0.270595],[-2,0,1,1],[0,500,0,9E+9,9E+9,9E+9]];
    LOCAL PERS pose poseFrame:=[[0.12,0.7,-19],[1,0,0,0]];
    LOCAL PERS pose poseTransform:=[[0,0,0],[1,0,0,0]];

    !For adjust the path accuracy at different oriention
    LOCAL PERS pos posPathAbsoluteOffsetList{32}:=[[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]];

    !For adjust the target accuracy at different oriention, only used for pWeld array targets
    LOCAL PERS pos posAbsoluteOffsetList{32}:=[[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]];
    !The weld targets can use * point or the array point
    LOCAL PERS robtarget pWeldList{32}:=[[[254.12,95.46,76.10],[0.176281,-0.0730172,-0.906905,0.375655],[-1,0,1,4],[2500,-500,850,9E+9,9E+9,9E+9]],[[299.65,95.46,76.1],[0.176281,-0.0730171,-0.906905,0.375655],[-1,0,1,4],[2500,-500,850,9E+9,9E+9,9E+9]],[[299.65,95.46,76.1],[0.176281,-0.0730171,-0.906905,0.375655],[-1,0,1,4],[2500,-500,850,9E+9,9E+9,9E+9]],[[299.65,95.46,76.1],[0.176281,-0.0730171,-0.906905,0.375655],[-1,0,1,4],[2500,-500,850,9E+9,9E+9,9E+9]],[[299.65,95.46,76.1],[0.176281,-0.0730171,-0.906905,0.375655],[-1,0,1,4],[2500,-500,850,9E+9,9E+9,9E+9]],[[299.65,95.46,76.1],[0.176281,-0.0730171,-0.906905,0.375655],[-1,0,1,4],[2500,-500,850,9E+9,9E+9,9E+9]],[[299.65,95.46,76.1],[0.176281,-0.0730171,-0.906905,0.375655],[-1,0,1,4],[2500,-500,850,9E+9,9E+9,9E+9]],[[299.65,95.46,76.1],[0.176281,-0.0730171,-0.906905,0.375655],[-1,0,1,4],[2500,-500,850,9E+9,9E+9,9E+9]],[[299.65,95.46,76.1],[0.176281,-0.0730171,-0.906905,0.375655],[-1,0,1,4],[2500,-500,850,9E+9,9E+9,9E+9]],[[299.65,95.46,76.1],[0.176281,-0.0730171,-0.906905,0.375655],[-1,0,1,4],[2500,-500,850,9E+9,9E+9,9E+9]],[[299.65,95.46,76.1],[0.176281,-0.0730171,-0.906905,0.375655],[-1,0,1,4],[2500,-500,850,9E+9,9E+9,9E+9]],[[299.65,95.46,76.1],[0.176281,-0.0730171,-0.906905,0.375655],[-1,0,1,4],[2500,-500,850,9E+9,9E+9,9E+9]],[[299.65,95.46,76.1],[0.176281,-0.0730171,-0.906905,0.375655],[-1,0,1,4],[2500,-500,850,9E+9,9E+9,9E+9]],[[299.65,95.46,76.1],[0.176281,-0.0730171,-0.906905,0.375655],[-1,0,1,4],[2500,-500,850,9E+9,9E+9,9E+9]],[[299.65,95.46,76.1],[0.176281,-0.0730171,-0.906905,0.375655],[-1,0,1,4],[2500,-500,850,9E+9,9E+9,9E+9]],[[299.65,95.46,76.1],[0.176281,-0.0730171,-0.906905,0.375655],[-1,0,1,4],[2500,-500,850,9E+9,9E+9,9E+9]],[[299.65,95.46,76.1],[0.176281,-0.0730171,-0.906905,0.375655],[-1,0,1,4],[2500,-500,850,9E+9,9E+9,9E+9]],[[299.65,95.46,76.1],[0.176281,-0.0730171,-0.906905,0.375655],[-1,0,1,4],[2500,-500,850,9E+9,9E+9,9E+9]],[[299.65,95.46,76.1],[0.176281,-0.0730171,-0.906905,0.375655],[-1,0,1,4],[2500,-500,850,9E+9,9E+9,9E+9]],[[299.65,95.46,76.1],[0.176281,-0.0730171,-0.906905,0.375655],[-1,0,1,4],[2500,-500,850,9E+9,9E+9,9E+9]],[[299.65,95.46,76.1],[0.176281,-0.0730171,-0.906905,0.375655],[-1,0,1,4],[2500,-500,850,9E+9,9E+9,9E+9]],[[299.65,95.46,76.1],[0.176281,-0.0730171,-0.906905,0.375655],[-1,0,1,4],[2500,-500,850,9E+9,9E+9,9E+9]],[[299.65,95.46,76.1],[0.176281,-0.0730171,-0.906905,0.375655],[-1,0,1,4],[2500,-500,850,9E+9,9E+9,9E+9]],[[299.65,95.46,76.1],[0.176281,-0.0730171,-0.906905,0.375655],[-1,0,1,4],[2500,-500,850,9E+9,9E+9,9E+9]],[[299.65,95.46,76.1],[0.176281,-0.0730171,-0.906905,0.375655],[-1,0,1,4],[2500,-500,850,9E+9,9E+9,9E+9]],[[299.65,95.46,76.1],[0.176281,-0.0730171,-0.906905,0.375655],[-1,0,1,4],[2500,-500,850,9E+9,9E+9,9E+9]],[[299.65,95.46,76.1],[0.176281,-0.0730171,-0.906905,0.375655],[-1,0,1,4],[2500,-500,850,9E+9,9E+9,9E+9]],[[299.65,95.46,76.1],[0.176281,-0.0730171,-0.906905,0.375655],[-1,0,1,4],[2500,-500,850,9E+9,9E+9,9E+9]],[[299.65,95.46,76.1],[0.176281,-0.0730171,-0.906905,0.375655],[-1,0,1,4],[2500,-500,850,9E+9,9E+9,9E+9]],[[299.65,95.46,76.1],[0.176281,-0.0730171,-0.906905,0.375655],[-1,0,1,4],[2500,-500,850,9E+9,9E+9,9E+9]],[[299.65,95.46,76.1],[0.176281,-0.0730171,-0.906905,0.375655],[-1,0,1,4],[2500,-500,850,9E+9,9E+9,9E+9]],[[299.65,95.46,76.1],[0.176281,-0.0730171,-0.906905,0.375655],[-1,0,1,4],[2500,-500,850,9E+9,9E+9,9E+9]]];

    LOCAL PERS welddata weld_1:=[6,0,[38,0,-1,0,0,350,0,0,0],[0,0,0,0,0,0,0,0,0]];
    LOCAL PERS weavedata weave_1:=[1,0,4,6,0,0,0,0,0,0,0,0,0,0,0];
    LOCAL PERS trackdata track_1:=[0,TRUE,50,[0,30,30,0,0,0,0,0,0],[0,0,0,0,0,0,0]];

    !wobjCurrent must be set correctly
    !extOffsetCurrent must be set correctly
    PROC Template_1001()
        Logging "Start to run Template_1001...";
        SetGO Go112_WeldCompleted,0;
        SetGO Go80_WeldingStatus,0;

        IF boolEnableGantryOffset THEN
            EOffsSet extGantryOffsetCurrent;
        ENDIF

        IF boolEnableSearch THEN
            SearchAndProcess;
        ENDIF

        !WeldSeam 1\Aproach\Depart\Quadrant1;
        !WeldSeam 2\Aproach\Depart\Quadrant1;
        WeldSeam 3\Aproach\Depart\Quadrant4;
        WeldSeam 4\Aproach\Depart\Quadrant4;
        WeldSeam 5\Aproach\Depart\Quadrant4;
        WeldSeam 6\Aproach\Depart\Quadrant4;
        WeldSeam 7\Aproach\Depart\Quadrant1;

        EOffsOff;
        Incr numPartCount;
        Logging "Template_1001 is done";

    UNDO
        EOffsOff;
    ENDPROC

    LOCAL PROC TeachReadyQuadrant()
        MoveAbsJ jointReadyQuadrant1,speedAir,fine,toolWeldGun\WObj:=wobjCurrent;
        MoveAbsJ jointReadyQuadrant2,speedAir,fine,toolWeldGun\WObj:=wobjCurrent;
        MoveAbsJ jointReadyQuadrant3,speedAir,fine,toolWeldGun\WObj:=wobjCurrent;
        MoveAbsJ jointReadyQuadrant4,speedAir,fine,toolWeldGun\WObj:=wobjCurrent;
    ENDPROC

    !1 - Search the fine oframe
    !2 - Search the seam offset if needed
    LOCAL PROC SearchAndProcess()
        SearchOframe;

        posePathDisplacementCurrentList{1}:=[[0,0,0]+posPathAbsoluteOffsetList{1},[1,0,0,0]];
    ENDPROC

    LOCAL PROC SearchOframe()
        Logging "Scan_1D_Laser for oframe";
        wobjCurrent.oframe:=[[0,0,0],[1,0,0,0]];
        MoveJ pX1,speedAproach,fine,toolWeldGun\WObj:=wobjCurrent;
        Scan_1D_Laser pX1_Found,pX1,1;
        MoveJ pX2,speedAproach,fine,toolWeldGun\WObj:=wobjCurrent;
        Scan_1D_Laser pX2_Found,pX2,1;
        MoveJ pY1,speedAproach,fine,toolWeldGun\WObj:=wobjCurrent;
        Scan_1D_Laser pY1_Found,pY1,1;
        poseFrame:=DefFrame(pX1_Found,pX2_Found,pY1_Found\Origin:=3);
        Logging "poseFrame.trans:="+ValToStr(poseFrame.trans);
        Logging "poseFrame.rot:="+GetEulerAngleString(poseFrame.rot);
        IF RobOS() THEN
            wobjCurrent.oframe:=PoseMult(poseFrame,poseTransform);
        ENDIF
        Logging "oframe.trans:="+ValToStr(wobjCurrent.oframe.trans);
        Logging "oframe.rot:="+GetEulerAngleString(wobjCurrent.oframe.rot);
    ENDPROC

    LOCAL PROC WeldSeam(num numSeamIndex\switch Aproach\switch Depart\switch Quadrant1|switch Quadrant2|switch Quadrant3|switch Quadrant4)
        VAR dnum dnumWeldSeamStatus;

        IF Present(Aproach) THEN
            IF Present(Quadrant1) THEN
                MoveAbsJ jointReadyQuadrant1,speedAir,fine,toolWeldGun\WObj:=wobjCurrent;
            ELSEIF Present(Quadrant2) THEN
                MoveAbsJ jointReadyQuadrant2,speedAir,fine,toolWeldGun\WObj:=wobjCurrent;
            ELSEIF Present(Quadrant3) THEN
                MoveAbsJ jointReadyQuadrant3,speedAir,fine,toolWeldGun\WObj:=wobjCurrent;
            ELSEIF Present(Quadrant4) THEN
                MoveAbsJ jointReadyQuadrant4,speedAir,fine,toolWeldGun\WObj:=wobjCurrent;
            ENDIF
        ENDIF

        IF RobOS() AND boolEnableOffset THEN
            IF posePathDisplacementCurrentList{numSeamIndex}<>[[0,0,0],[1,0,0,0]] THEN
                PDispSet posePathDisplacementCurrentList{numSeamIndex};
            ENDIF
        ENDIF

        dnumWeldSeamStatus:=GOutputDnum(Go112_WeldCompleted);
        BitClear dnumWeldSeamStatus,numSeamIndex;
        SetGO Go112_WeldCompleted,dnumWeldSeamStatus;
        SetGO Go80_WeldingStatus,pow(2,numSeamIndex-1);
        %"Seam_"+ValToStr(numSeamIndex)%;
        SetGO Go80_WeldingStatus,0;
        BitSet dnumWeldSeamStatus,numSeamIndex;
        SetGO Go112_WeldCompleted,dnumWeldSeamStatus;
        PDispOff;

        IF Present(Depart) THEN
            IF Present(Quadrant1) THEN
                MoveAbsJ jointReadyQuadrant1,speedAir,fine,toolWeldGun\WObj:=wobjCurrent;
            ELSEIF Present(Quadrant2) THEN
                MoveAbsJ jointReadyQuadrant2,speedAir,fine,toolWeldGun\WObj:=wobjCurrent;
            ELSEIF Present(Quadrant3) THEN
                MoveAbsJ jointReadyQuadrant3,speedAir,fine,toolWeldGun\WObj:=wobjCurrent;
            ELSEIF Present(Quadrant4) THEN
                MoveAbsJ jointReadyQuadrant4,speedAir,fine,toolWeldGun\WObj:=wobjCurrent;
            ENDIF
        ENDIF

    UNDO
        PDispOff;
    ENDPROC

    LOCAL PROC Seam_1()
        MoveJ [[200,200,100],[0.376869611,0.909843726,-0.066452281,-0.160429997],[-1,-1,-1,1],[-1665.21,438.067,420.998,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart [[132.960608357,0,7],[0.376869611,0.909843726,-0.066452281,-0.160429997],[-1,-1,-1,1],[-1665.21,438.067,420.998,9E+09,9E+09,9E+09]],speedAproach,seamShared,weld_1\Weave:=weave_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=track_1\SeamName:="WeldSeam";
        ArcLEnd [[0,0,7],[0.376869611,0.909843726,-0.066452281,-0.160429997],[-1,-1,-1,1],[-1665.21,438.067,420.998,9E+09,9E+09,9E+09]],speedAproach,seamShared,weld_1\Weave:=weave_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=track_1;
        MoveL [[200,200,100],[0.376869611,0.909843726,-0.066452281,-0.160429997],[-1,-1,-1,1],[-1665.21,438.067,420.998,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
    ENDPROC

    LOCAL PROC Seam_2()
        MoveJ [[200,200,100],[0.482962913,0.103553391,-0.786566092,0.370590477],[0,0,-1,1],[-1665.21,438.067,420.998,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart [[0,0,7],[0.482962913,0.103553391,-0.786566092,0.370590477],[0,0,-1,1],[-1665.21,438.067,420.998,9E+09,9E+09,9E+09]],speedAproach,seamShared,weld_1\Weave:=weave_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=track_1\SeamName:="WeldSeam";
        ArcL [[0,0,100],[0.629409523,0.079459311,-0.603553391,0.482962913],[1,0,-1,1],[-1665.21,438.067,420.998,9E+09,9E+09,9E+09]],speedAproach,seamShared,weld_1\Weave:=weave_1,z10,toolWeldGun\WObj:=wobjCurrent\Track:=track_1;
        ArcLEnd [[0,0,385],[0.629409523,0.079459311,-0.603553391,0.482962913],[1,0,-1,1],[-1665.21,438.067,420.998,9E+09,9E+09,9E+09]],speedAproach,seamShared,weld_1\Weave:=weave_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=track_1;
        MoveL [[200,200,300],[0.629409523,0.079459311,-0.603553391,0.482962913],[1,0,-1,1],[-1665.21,438.067,420.998,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
    ENDPROC

    LOCAL PROC Seam_3()
        MoveJ [[200,-200,100],[0.379409486,-0.915975629,-0.049950212,0.120590488],[0,-1,3,5],[-1665.21,-562,420.998,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart [[132.960608,-11,7],[0.379409486,-0.915975629,-0.049950212,0.120590488],[0,-1,3,5],[-1665.21,-562,420.998,9E+09,9E+09,9E+09]],speedAproach,seamShared,weld_1\Weave:=weave_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=track_1\SeamName:="WeldSeam";
        ArcLEnd [[0,-11,7],[0.379409486,-0.915975629,-0.049950212,0.120590488],[0,-1,3,5],[-1665.21,-562,420.998,9E+09,9E+09,9E+09]],speedAproach,seamShared,weld_1\Weave:=weave_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=track_1;
        MoveL [[200,-200,100],[0.379409486,-0.915975629,-0.049950212,0.120590488],[0,-1,3,5],[-1665.21,-562,420.998,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
    ENDPROC

    LOCAL PROC Seam_4()
        MoveJ [[200.00,-200.00,100.00],[0.483384,-0.164796,-0.813503,-0.278199],[-1,1,0,7],[-1665.21,-562,420.998,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart [[10,-31,7],[0.482962909,-0.103553453,-0.786566092,-0.370590465],[-1,1,0,7],[-1665.21,-562,420.998,9E+09,9E+09,9E+09]],speedAproach,seamShared,weld_1\Weave:=weave_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=track_1\SeamName:="WeldSeam";
        ArcL [[10,-31,100],[0.629409523,-0.079459311,-0.603553391,-0.482962913],[-1,1,0,7],[-1665.21,-562,420.998,9E+09,9E+09,9E+09]],speedAproach,seamShared,weld_1\Weave:=weave_1,z10,toolWeldGun\WObj:=wobjCurrent\Track:=track_1;
        ArcLEnd [[10,-31,350],[0.629409523,-0.079459311,-0.603553391,-0.482962913],[-1,1,0,7],[-1665.21,-562,420.998,9E+09,9E+09,9E+09]],speedAproach,seamShared,weld_1\Weave:=weave_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=track_1;
        MoveJ [[200,-200,300],[0.507251,-0.318065,-0.7464,-0.290549],[-1,1,0,7],[-1665.21,-562,200,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
    ENDPROC

    LOCAL PROC Seam_5()
        MoveJ [[196.855339594,-24,29.355339594],[0.268283046,0.414729656,-0.818233257,-0.294139178],[1,-1,-1,1],[-1665.21,-562,420.998,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart [[161.500000535,-24,-5.999999465],[0.268283046,0.414729656,-0.818233257,-0.294139178],[0,-1,0,1],[-1665.21,-562,420.998,9E+09,9E+09,9E+09]],speedAproach,seamShared,weld_1\Weave:=weave_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=track_1\SeamName:="WeldSeam";
        ArcLEnd [[161.500000535,-155.5,-5.999999465],[0.268283046,0.414729656,-0.818233257,-0.294139178],[0,-1,0,1],[-1665.21,-562,420.998,9E+09,9E+09,9E+09]],speedAproach,seamShared,weld_1\Weave:=weave_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=track_1;
        MoveL [[196.855339594,-155.5,29.355339594],[0.268283046,0.414729656,-0.818233257,-0.294139178],[0,-1,0,1],[-1665.21,-562,420.998,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
    ENDPROC

    LOCAL PROC Seam_6()
        MoveJ [[35.355339059,144.5,451.355339059],[0.27059805,0.653281482,-0.653281482,-0.27059805],[-2,0,1,1],[-1665.21,-562,120.998,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart [[0,144.5,416],[0.27059805,0.653281482,-0.653281482,-0.27059805],[-1,-1,0,1],[-1665.21,-562,120.998,9E+09,9E+09,9E+09]],speedAproach,seamShared,weld_1\Weave:=weave_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=track_1\SeamName:="WeldSeam";
        ArcLEnd [[0,-155.5,416],[0.27059805,0.653281482,-0.653281482,-0.27059805],[-1,-1,0,1],[-1665.21,-562,120.998,9E+09,9E+09,9E+09]],speedAproach,seamShared,weld_1\Weave:=weave_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=track_1;
        MoveJ [[35.355339059,-155.5,451.355339059],[0.27059805,0.653281482,-0.653281482,-0.27059805],[-1,-1,0,1],[-1665.21,-562,120.998,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
    ENDPROC

    LOCAL PROC Seam_7()
        MoveJ [[207.855339996,13,29.355339059],[0.304380715,-0.304380715,-0.865366241,0.256604812],[0,-1,0,1],[-1665.21,438.067,420.998,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart [[172.500000937,13,-6],[0.304380715,-0.304380715,-0.865366241,0.256604812],[1,0,0,1],[-1665.21,438.067,420.998,9E+09,9E+09,9E+09]],speedAproach,seamShared,weld_1\Weave:=weave_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=track_1\SeamName:="WeldSeam";
        ArcLEnd [[172.500000937,144.5,-6],[0.304380715,-0.304380715,-0.865366241,0.256604812],[1,0,0,1],[-1665.21,438.067,420.998,9E+09,9E+09,9E+09]],speedAproach,seamShared,weld_1\Weave:=weave_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=track_1;
        MoveL [[207.855339996,144.5,29.355339059],[0.304380715,-0.304380715,-0.865366241,0.256604812],[1,0,0,1],[-1665.21,438.067,420.998,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
    ENDPROC


ENDMODULE