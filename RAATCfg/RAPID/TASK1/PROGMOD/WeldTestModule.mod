MODULE WeldTestModule
    TASK PERS robtarget pWeldReady:=[[470.01,-1177.83,488.06],[0.0856884,-0.719013,-0.681861,-0.103645],[0,-1,0,0],[0.0636362,9E+09,9E+09,9E+09,9E+09,9E+09]];
    TASK PERS robtarget pWeld1:=[[470.01,-1177.83,488.06],[0.0856888,-0.719013,-0.681862,-0.103645],[0,-1,0,0],[0.0636362,9E+09,9E+09,9E+09,9E+09,9E+09]];
    TASK PERS robtarget pWeld2:=[[463.93,-1182.78,481.69],[0.0856893,-0.719013,-0.681861,-0.103644],[0,-1,0,0],[0.0625076,9E+09,9E+09,9E+09,9E+09,9E+09]];

    TASK PERS seamdata seamWeld:=[0,0.5,[0,0,0,0,0,0,0,0,0],0,0,0,0,0,[0,0,0,0,0,0,0,0,0],0,0,[0,0,0,0,0,0,0,0,0],0,0,[0,0,0,0,0,0,0,0,0],0.5];
    TASK PERS welddata weldWeld:=[8,0,[17,0,0,0,0,230,0,0,0],[0,0,0,0,0,0,0,0,0]];

    TASK PERS robtarget pWeldWeaveReady:=[[506.33,1243.17,-666.96],[0.657951,-0.267537,-0.648249,-0.274405],[0,-1,-3,1],[670.006,9E+09,9E+09,9E+09,9E+09,9E+09]];
    TASK PERS robtarget pWeldWeave1:=[[506.33,1243.17,-666.96],[0.65795,-0.267538,-0.648249,-0.274405],[0,-1,-3,1],[670.006,9E+09,9E+09,9E+09,9E+09,9E+09]];
    TASK PERS robtarget pWeldWeave2:=[[506.33,1243.17,-666.96],[0.65795,-0.267538,-0.648249,-0.274405],[0,-1,-3,1],[670.006,9E+09,9E+09,9E+09,9E+09,9E+09]];

    TASK PERS seamdata seamWeave:=[0.5,0.5,[0,0,0,0,0,0,0,0,0],0,0,0,0,0,[0,0,0,0,0,0,0,0,0],0,0,[0,0,0,0,0,0,0,0,0],0,0,[0,0,0,0,0,0,0,0,0],0.5];
    TASK PERS welddata weldWeave:=[3,0,[4,0,-5,0,0,230,0,0,0],[0,0,0,0,0,0,0,0,0]];
    TASK PERS weavedata weaveWeave:=[1,0,1.5,6,0,0,0,0,0,0,0,0,0,0,0];

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