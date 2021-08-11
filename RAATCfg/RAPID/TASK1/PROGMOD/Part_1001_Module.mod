MODULE Part_1001_Module
    !*****************************************************
    !Module Name:   Part_1001_Module
    !Version:       1.0
    !Description:   All the targets are coordinated in its self coordinate system
    !Date:          2021-6-30
    !Author:        Michael
    !*****************************************************

    LOCAL PERS num numPartCount:=28;

    LOCAL PERS jointtarget jointReady:=[[0,0,0,0,-30,180],[500,500,-1000,9E+09,9E+09,9E+09]];

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
    PROC Part_1001()
        Logging "Start to run Part_1001...";
        SetGO Go112_WeldCompleted,0;
        SetGO Go80_WeldingStatus,0;

        EOffsSet extGantryOffsetCurrent;
        MoveAbsJ jointReady,speedAir,fine,toolWeldGun\WObj:=wobjCurrent;
        
        SearchAndProcess;

        WeldSeam 6;
        WeldSeam 4;
        WeldSeam 5;
        WeldSeam 7;
        WeldSeam 3;
        WeldSeam 1;
        WeldSeam 2;

        EOffsOff;
        Incr numPartCount;
        Logging "Part_1001 is done";

    UNDO
        EOffsOff;
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
        MoveJ pX1,speedAproach,fine,toolLaser\WObj:=wobjCurrent;
        Scan_1D_Laser pX1_Found,pX1,1;
        MoveJ pX2,speedAproach,fine,toolLaser\WObj:=wobjCurrent;
        Scan_1D_Laser pX2_Found,pX2,1;
        MoveJ pY1,speedAproach,fine,toolLaser\WObj:=wobjCurrent;
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

    LOCAL PROC WeldSeam(num numSeamIndex)
        VAR dnum dnumWeldSeamStatus;
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

    UNDO
        PDispOff;
    ENDPROC

    LOCAL PROC Seam_1()
        MoveJ [[0.00,-44.37,35.35],[0.326504,-0.627209,-0.674383,-0.21263],[-1,-1,2,6],[0,0,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart [[0.00,-9.01,-0.00],[0.326504,-0.627209,-0.674383,-0.21263],[-1,-1,2,6],[0,0,0,9E+9,9E+9,9E+9]],speedAproach,seamShared,weld_1\Weave:=weave_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=track_1\SeamName:="WeldSeam";
        ArcLEnd [[113.50,-9.01,-0.00],[0.326504,-0.627209,-0.674383,-0.21263],[-1,-1,2,6],[0,0,0,9E+9,9E+9,9E+9]],speedWeld,seamShared,weld_1\Weave:=weave_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=track_1;
        MoveL [[113.50,-44.37,35.35],[0.326504,-0.627209,-0.674383,-0.21263],[-1,-1,2,6],[0,0,0,9E+9,9E+9,9E+9]],speedAproach,zoneAproach,toolWeldGun\WObj:=wobjCurrent;
    ENDPROC

    LOCAL PROC Seam_2()
        MoveJ [[35.36,-44.37,-0.00],[0.620884,-0.38302,-0.663417,-0.166363],[-2,0,1,3],[0,0,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart [[0.00,-9.01,-0.00],[0.620884,-0.38302,-0.663417,-0.166363],[-2,0,1,3],[0,0,0,9E+9,9E+9,9E+9]],speedAproach,seamShared,weld_1\Weave:=weave_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=track_1\SeamName:="WeldSeam";
        ArcLEnd [[0.00,-9.01,203.00],[0.620884,-0.383021,-0.663417,-0.166363],[-2,0,1,3],[0,0,0,9E+9,9E+9,9E+9]],speedWeld,seamShared,weld_1\Weave:=weave_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=track_1;
        MoveL [[35.36,-44.37,203.00],[0.620884,-0.383021,-0.663417,-0.166363],[-2,0,1,3],[0,0,0,9E+9,9E+9,9E+9]],speedAproach,zoneAproach,toolWeldGun\WObj:=wobjCurrent;
    ENDPROC

    LOCAL PROC Seam_3()
        MoveJ [[156.24,-79.51,16.35],[0.347396,0.205994,-0.897636,-0.176443],[-1,0,0,6],[0,0,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart [[120.89,-79.51,-19.00],[0.347396,0.205994,-0.897636,-0.176443],[-1,0,0,6],[0,0,0,9E+9,9E+9,9E+9]],speedAproach,seamShared,weld_1\Weave:=weave_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=track_1\SeamName:="WeldSeam";
        ArcLEnd [[120.89,-4.51,-19.00],[0.347396,0.205994,-0.897636,-0.176443],[-1,0,0,6],[0,0,0,9E+9,9E+9,9E+9]],speedWeld,seamShared,weld_1\Weave:=weave_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=track_1;
        MoveL [[156.24,-4.51,16.35],[0.347396,0.205994,-0.897636,-0.176443],[-1,0,0,6],[0,0,0,9E+9,9E+9,9E+9]],speedAproach,zoneAproach,toolWeldGun\WObj:=wobjCurrent;
    ENDPROC

    LOCAL PROC Seam_4()
        MoveJ [[0.00,35.34,35.35],[0.382685,0.923879,2.15759E-6,3.34201E-6],[-1,0,-2,4],[0,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart [[0.00,-0.01,-0.00],[0.382685,0.923879,2.68251E-6,3.26204E-6],[-1,0,-2,4],[0,500,0,9E+9,9E+9,9E+9]],speedAproach,seamShared,weld_1\Weave:=weave_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=track_1\SeamName:="WeldSeam";
        ArcLEnd [[113.50,-0.01,-0.00],[0.382685,0.923879,2.42786E-6,3.28137E-6],[-1,0,-2,4],[0,500,0,9E+9,9E+9,9E+9]],speedWeld,seamShared,weld_1\Weave:=weave_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=track_1;
        MoveL [[113.50,35.34,35.35],[0.382685,0.923879,2.40908E-6,3.0775E-6],[-1,0,-2,4],[0,500,0,9E+9,9E+9,9E+9]],speedAproach,zoneAproach,toolWeldGun\WObj:=wobjCurrent;
    ENDPROC

    LOCAL PROC Seam_5()
        MoveJ [[35.36,35.34,-0.00],[0.642787,0.541676,-0.541674,4.0554E-6],[0,-1,-1,4],[0,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart [[0.00,-0.01,-0.00],[0.642787,0.541677,-0.541674,4.34025E-6],[0,-1,-1,4],[0,500,0,9E+9,9E+9,9E+9]],speedAproach,seamShared,weld_1\Weave:=weave_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=track_1\SeamName:="WeldSeam";
        ArcLEnd [[0.00,-0.01,203.00],[0.642787,0.541676,-0.541675,4.25811E-6],[0,-1,-1,4],[0,500,0,9E+9,9E+9,9E+9]],speedWeld,seamShared,weld_1\Weave:=weave_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=track_1;
        MoveL [[35.36,35.34,203.00],[0.642788,0.541676,-0.541674,4.73115E-6],[0,-1,-1,4],[0,500,0,9E+9,9E+9,9E+9]],speedAproach,zoneAproach,toolWeldGun\WObj:=wobjCurrent;
    ENDPROC

    LOCAL PROC Seam_6()
        MoveJ [[121.01,80.20,-19.00],[0.347394,-0.205989,-0.897637,0.176449],[1,0,-1,1],[0,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart [[120.89,-4.51,-19.00],[0.347394,-0.205989,-0.897637,0.176449],[1,0,-1,1],[0,500,0,9E+9,9E+9,9E+9]],speedAproach,seamShared,weld_1\Weave:=weave_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=track_1\SeamName:="WeldSeam";
        ArcLEnd [[120.89,70.49,-19.00],[0.347394,-0.205989,-0.897637,0.176449],[1,0,-1,1],[0,500,0,9E+9,9E+9,9E+9]],speedWeld,seamShared,weld_1\Weave:=weave_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=track_1;
        MoveL [[156.24,70.49,16.36],[0.347394,-0.205989,-0.897637,0.176449],[1,0,-1,1],[0,500,0,9E+9,9E+9,9E+9]],speedAproach,zoneAproach,toolWeldGun\WObj:=wobjCurrent;
    ENDPROC

    LOCAL PROC Seam_7()
        MoveJ [[44.36,-79.51,307.35],[3.51254E-6,0.92388,2.87245E-6,-0.382682],[0,0,-2,4],[0,0,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart [[9.00,-79.51,272.00],[3.10984E-6,0.92388,2.50695E-6,-0.382682],[0,0,-2,4],[0,0,0,9E+9,9E+9,9E+9]],speedAproach,seamShared,weld_1\Weave:=weave_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=track_1\SeamName:="WeldSeam";
        ArcLEnd [[9.00,70.49,272.00],[3.36117E-6,0.92388,2.22444E-6,-0.382682],[0,0,-2,4],[0,0,0,9E+9,9E+9,9E+9]],speedWeld,seamShared,weld_1\Weave:=weave_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=track_1;
        MoveL [[44.35,70.49,307.35],[3.47838E-6,0.92388,2.99843E-6,-0.382682],[0,0,-2,4],[0,0,0,9E+9,9E+9,9E+9]],speedAproach,zoneAproach,toolWeldGun\WObj:=wobjCurrent;
    ENDPROC

ENDMODULE