MODULE WeldTestModule
    TASK PERS robtarget pWeldReady:=[[-467.92,52.53,916.72],[0.387568,0.148202,-0.90641,0.0790414],[-2,0,2,1],[-829.935,-140.814,-485.851,9E+09,9E+09,9E+09]];
    TASK PERS robtarget pWeld1:=[[-521.93,160.88,873.37],[0.387567,0.148202,-0.906411,0.0790441],[-2,0,2,1],[-829.935,-140.814,-485.851,9E+09,9E+09,9E+09]];
    TASK PERS robtarget pWeld2:=[[-516.45,52.52,873.37],[0.387566,0.1482,-0.906411,0.079047],[-2,0,2,1],[-829.935,-140.814,-485.851,9E+09,9E+09,9E+09]];

    TASK PERS seamdata seamWeld:=[0,0.5,[0,0,0,0,0,0,0,0,0],0,0,0,0,0,[0,0,0,0,0,0,0,0,0],0,0,[0,0,0,0,0,0,0,0,0],0,0,[0,0,0,0,0,0,0,0,0],0.5];
    TASK PERS welddata weldWeld:=[8,0,[17,0,0,0,0,230,0,0,0],[0,0,0,0,0,0,0,0,0]];

    TASK PERS robtarget pWeldWeaveReady:=[[-514.35,142.35,865.74],[0.223327,0.694043,-0.667613,-0.150741],[-2,0,1,1],[-829.935,-140.815,-430.34,9E+09,9E+09,9E+09]];
    TASK PERS robtarget pWeldWeave1:=[[-591.23,151.22,813.95],[0.223326,0.694043,-0.667613,-0.150742],[-2,0,1,1],[-829.935,-140.814,-430.341,9E+09,9E+09,9E+09]];
    TASK PERS robtarget pWeldWeave2:=[[-577.51,-41.54,813.25],[0.223325,0.694043,-0.667613,-0.15074],[-2,0,1,1],[-829.935,-140.814,-430.341,9E+09,9E+09,9E+09]];

    TASK PERS seamdata seamWeave:=[0,0.5,[0,0,0,0,0,0,0,0,0],0,0,0,0,0,[0,0,0,0,0,0,0,0,0],0,0,[0,0,0,0,0,0,0,0,0],0,0,[0,0,0,0,0,0,0,0,0],0.5];
    TASK PERS welddata weldWeave:=[2,0,[21,0,-5,0,0,230,0,0,0],[0,0,0,0,0,0,0,0,0]];
    TASK PERS weavedata weaveWeave:=[1,0,2,2.2,0,0.5,0,0.5,0,0,0,0,0,0,0];

    TASK PERS robtarget pWGReady:=[[2571.80,-1031.86,873.30],[0.361306,-0.103756,-0.907486,0.187513],[-1,0,-1,0],[2643.67,9E+09,9E+09,9E+09,9E+09,9E+09]];
    TASK PERS robtarget pWG1:=[[2529.79,-942.75,829.34],[0.361338,-0.103715,-0.907476,0.187524],[-2,0,-1,0],[2643.67,9E+09,9E+09,9E+09,9E+09,9E+09]];
    TASK PERS robtarget pWG2:=[[2550.56,-1193.64,833.48],[0.361337,-0.103713,-0.907479,0.187512],[-1,0,-1,0],[2643.66,9E+09,9E+09,9E+09,9E+09,9E+09]];

    TASK PERS seamdata seamWG:=[0.5,0.5,[0,0,0,0,0,0,0,0,0],0,0,0,0,0,[0,0,0,0,0,0,0,0,0],0,0,[0,0,0,0,0,0,0,0,0],0,0,[0,0,0,0,0,0,0,0,0],0];
    TASK PERS welddata weldWG:=[6,0,[38,0,-1,0,0,350,0,0,0],[0,0,0,0,0,0,0,0,0]];
    TASK PERS weavedata weaveWG:=[1,0,4,6,0,0,0,0,0,0,0,0,0,0,0];
    TASK PERS trackdata trackWG:=[0,TRUE,50,[0,30,30,0,0,0,0,0,0],[0,0,0,0,0,0,0]];
    TASK PERS multidata Layer_2:=[1,15,15,0,0,5,5,0,0];
    TASK PERS multidata Layer_3:=[1,15,15,0,0,-5,5,0,0];

    LOCAL CONST robtarget pSmarTac1x:=[[-171.74,1217.50,657.77],[0.247726,-0.646663,-0.687784,-0.217741],[1,-1,1,0],[-458.612,9E+09,9E+09,9E+09,9E+09,9E+09]];
    LOCAL CONST robtarget pSmarTac1y:=[[3276.07,-893.34,416.86],[0.415186,-0.0263263,0.909173,-0.0182127],[-1,-2,0,1],[2628.78,9E+09,9E+09,9E+09,9E+09,9E+09]];
    LOCAL CONST robtarget pSmarTac1z:=[[3303.20,-893.35,447.85],[0.415243,-0.0263483,0.909146,-0.0182198],[-1,-2,0,1],[2628.78,9E+09,9E+09,9E+09,9E+09,9E+09]];
    LOCAL CONST robtarget pSmarTac2x:=[[-171.74,1217.50,657.77],[0.247726,-0.646663,-0.687784,-0.217741],[1,-1,1,0],[-458.612,9E+09,9E+09,9E+09,9E+09,9E+09]];
    LOCAL CONST robtarget pSmarTac2y:=[[3270.09,-1007.10,426.83],[0.41523,-0.0263466,0.909152,-0.0182145],[-1,-2,0,1],[2628.78,9E+09,9E+09,9E+09,9E+09,9E+09]];
    LOCAL CONST robtarget pSmarTac2z:=[[3300.88,-1007.02,483.65],[0.415231,-0.0263267,0.909153,-0.0182011],[-1,-2,0,1],[2628.78,9E+09,9E+09,9E+09,9E+09,9E+09]];

    LOCAL PERS pose poseSmarTac1x:=[[12.8822,0.0789795,-12.6787],[1,0,0,0]];
    LOCAL PERS pose poseSmarTac1y:=[[11.6851,-0.00891113,0.096344],[1,0,0,0]];
    LOCAL PERS pose poseSmarTac1z:=[[0.00170898,-0.000427246,-4.96652],[1,0,0,0]];
    LOCAL PERS pose poseSmarTac2x:=[[23.9402,0.365601,-13.4241],[1,0,0,0]];
    LOCAL PERS pose poseSmarTac2y:=[[11.551,0.00830078,0.00735474],[1,0,0,0]];
    LOCAL PERS pose poseSmarTac2z:=[[0.00561523,-0.0124512,-12.0016],[1,0,0,0]];

    TASK PERS robtarget pWeldLaser1:=[[-540.30,219.95,880.85],[0.226872,0.677852,-0.684046,-0.145348],[-2,0,1,1],[-829.935,-140.814,-430.34,9E+09,9E+09,9E+09]];
    TASK PERS robtarget pWeldLaser2:=[[-531.51,27.86,880.85],[0.226872,0.677853,-0.684045,-0.14535],[-1,0,1,1],[-829.935,-140.814,-430.341,9E+09,9E+09,9E+09]];
    TASK PERS robtarget pWeldLaserFound1:=[[-591.23,151.22,813.95],[0.387567,0.148201,-0.906411,0.0790435],[-2,0,2,1],[-829.935,-140.814,-485.851,9E+09,9E+09,9E+09]];
    TASK PERS robtarget pWeldLaserFound2:=[[-577.51,-41.54,813.25],[0.387566,0.1482,-0.906411,0.0790468],[-2,0,2,1],[-829.935,-140.814,-485.851,9E+09,9E+09,9E+09]];

    PROC WeldTest()
        MoveJ pWeldReady,v100,z10,toolWeldGun;
        ArcLStart pWeld1,v100,seamWeld,weldWeld,fine,toolWeldGun;
        ArcLEnd pWeld2,v100,seamWeld,weldWeld,fine,toolWeldGun;
        MoveL pWeldReady,v100,fine,toolWeldGun;
    ENDPROC

    PROC WeldWeaveTest()
        MoveJ pWeldWeaveReady,v100,z10,toolWeldGun;
        ArcLStart pWeldWeave1,v100,seamWeave,weldWeave\Weave:=weaveWeave,fine,toolWeldGun;
        ArcLEnd pWeldWeave2,v100,seamWeave,weldWeave\Weave:=weaveWeave,fine,toolWeldGun;
        MoveL pWeldWeaveReady,v100,fine,toolWeldGun;
        RETURN ;
    ENDPROC

    PROC WeldLaserSearchTest()
        IF RobOS() THEN
            IF NOT ASFMu_Initialize(Laser_IP_Add,2,TRUE,TRUE,TRUE,toolWeldGun,wobj0) THEN
                TPWrite "The socket between laser and robot error Can't connect to vision controller";
                stop;
            ENDIF
        ENDIF

        MoveAbsJ [[-102.582,34.7441,-48.7923,22.0956,-101.14,108.526],[-829.935,-140.814,-430.341,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun;

        ScanSeamByLaser pWeldLaserFound1,pWeldLaser1,scanJoint2,speedAproach,toolWeldGun;
        ScanSeamByLaser pWeldLaserFound2,pWeldLaser2,scanJoint2,speedAproach,toolWeldGun;

        MoveAbsJ [[-85.1711,28.5511,-39.4478,14.1206,-109.449,92.7941],[-829.935,-140.814,-430.34,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun;

        pWeldWeave1.trans:=pWeldLaserFound1.trans;
        pWeldWeave2.trans:=pWeldLaserFound2.trans;

        MoveJ pWeldWeaveReady,v100,z10,toolWeldGun;
        ArcLStart pWeldWeave1,v100,seamWeave,weldWeave\Weave:=weaveWeave,fine,toolWeldGun;
        ArcLEnd pWeldWeave2,v100,seamWeave,weldWeave\Weave:=weaveWeave,fine,toolWeldGun;
        MoveL pWeldWeaveReady,v100,fine,toolWeldGun;
        RETURN ;
    ENDPROC

    PROC WGTest()
        MoveJ pWGReady,v100,z10,toolWeldGun\WObj:=wobj0;
        ArcLStart pWG1,v100,seamWG,weldWG\Weave:=weaveWG,fine,toolWeldGun\Track:=trackWG\SeamName:="weldTest";
        ArcLEnd pWG2,v100,seamWG,weldWG\Weave:=weaveWG,fine,toolWeldGun\Track:=trackWG;
        MpSavePath "Part1_weldTest"\SeamName:="weldTest"\CreateLogFile;
        Stop;
        MpLoadPath "Part1_weldTest";
        ArcRepL\Start\End,Layer_2,v100,seamWG,weldWG,weaveWG,z10,toolWeldGun\WObj:=wobj0\SeamName:="weldTest";
        Stop;
        ArcRepL\Start\End,Layer_3,v100,seamWG,weldWG,weaveWG,z10,toolWeldGun\WObj:=wobj0\SeamName:="weldTest";
        MoveL pWGReady,v100,z10,toolWeldGun\WObj:=wobj0;
    ENDPROC

    PROC WeldTest_Q2_2F()
        MoveJ [[-301.19,34.29,849.89],[0.119305,-0.0528558,0.924955,-0.356975],[-1,-1,1,1],[-1214.34,420.606,-289.138,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobj0;
        ArcLStart [[-362.80,-10.17,796.27],[0.119308,-0.0528561,0.924955,-0.356973],[-1,-1,2,1],[-1214.34,420.606,-289.138,9E+09,9E+09,9E+09]],speedAproach,seamShared,weldShared_1\Weave:=weaveShared_1,fine,toolWeldGun\Track:=trackShared_1\SeamName:="WeldTest_Q2_2F";
        ArcLEnd [[-301.19,-10.17,796.27],[0.119306,-0.0528565,0.924956,-0.356971],[-1,-1,2,1],[-1214.34,420.606,-289.138,9E+09,9E+09,9E+09]],speedWeld,seamShared,weldShared_1\Weave:=weaveShared_1,fine,toolWeldGun\Track:=trackShared_1;
        MoveJ [[-653.03,80.63,849.82],[0.120576,-0.0499496,0.915979,-0.379406],[-1,-1,2,1],[-1488.92,426.811,-289.139,9E+09,9E+09,9E+09]],speedAproach,fine,toolWeldGun\WObj:=wobj0;
    ENDPROC

    PROC WeldTest_Q2_3F()
        MoveJ [[-483.83,125.29,899.66],[0.28646,0.615643,-0.253764,0.68886],[-2,-1,1,1],[-1243.95,480.692,-240.237,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobj0;
        ArcLStart [[-392.14,-32.06,802.45],[0.2341,0.733331,-0.302741,0.561935],[-1,-1,0,1],[-1243.95,480.692,-240.237,9E+09,9E+09,9E+09]],speedAproach,seamShared,weldShared_2\Weave:=weaveShared_2,fine,toolWeldGun\Track:=trackShared_2\SeamName:="WeldTest_Q2_3F";
        ArcL [[-392.94,-31.26,859.72],[0.28646,0.615643,-0.253762,0.688861],[-1,-2,1,1],[-1243.95,480.692,-240.237,9E+09,9E+09,9E+09]], speedAproach, seamShared, weldShared_2\Weave:=weaveShared_2, z10, toolWeldGun\Track:=trackShared_2;
        ArcLEnd [[-392.72,-31.48,900.47],[0.28646,0.615642,-0.253762,0.688861],[-1,-1,1,1],[-1243.95,480.692,-240.237,9E+09,9E+09,9E+09]],speedWeld,seamShared,weldShared_2\Weave:=weaveShared_2,fine,toolWeldGun\Track:=trackShared_2;
        MoveJ [[-483.83,125.28,899.66],[0.286461,0.615643,-0.253765,0.68886],[-2,-1,1,1],[-1243.95,480.692,-240.236,9E+09,9E+09,9E+09]],speedAproach,fine,toolWeldGun\WObj:=wobj0;
    ENDPROC

    PROC WGSmarTacTest()
        MoveL pWGReady,v100,z10,toolWeldGun\WObj:=wobj0;
        MoveL pWG1,v100,fine,toolWeldGun;
        MoveL pWG2,v100,fine,toolWeldGun;

        MoveL pWGReady,v100,fine,toolWeldGun;
        Search_1D poseSmarTac1y,pSmarTac1y,pWG1,v100,toolWeldGun;
        Search_1D poseSmarTac1z,pSmarTac1z,pWG2,v100,toolWeldGun;

        MoveL pWGReady,v100,fine,toolWeldGun;
        Search_1D poseSmarTac2y,pSmarTac2y,pWG2,v100,toolWeldGun;
        Search_1D poseSmarTac2z,pSmarTac2z,pWG2,v100,toolWeldGun;

        MoveL pWGReady,v100,fine,toolWeldGun;
        PDispSet poseSmarTac1y;
        PDispAdd poseSmarTac1z;
        ArcLStart pWG1,v100,seamWG,weldWG\Weave:=weaveWG,fine,toolWeldGun\Track:=trackWG\SeamName:="weldTest";
        PDispSet poseSmarTac2y;
        PDispAdd poseSmarTac2z;
        ArcLEnd pWG2,v100,seamWG,weldWG\Weave:=weaveWG,fine,toolWeldGun\Track:=trackWG;
        PDispOff;

        Stop;
        ArcRepL\Start\End,Layer_2,v100,seamWG,weldWG,weaveWG,z10,toolWeldGun\WObj:=wobj0\SeamName:="weldTest";
        Stop;
        ArcRepL\Start\End,Layer_3,v100,seamWG,weldWG,weaveWG,z10,toolWeldGun\WObj:=wobj0\SeamName:="weldTest";
        MoveL pWGReady,v100,z10,toolWeldGun\WObj:=wobj0;
    ENDPROC
ENDMODULE