MODULE SmarTacTestModule
    !*****************************************************
    !Module Name: SmarTacTestModule
    !Version:     1.0
    !Description: 
    !Date:        2020-8-17
    !Author:      Michael
    !*****************************************************

    LOCAL CONST robtarget pSmarTacReady:=[[3263.33,-950.90,445.80],[0.415199,-0.0263176,0.909167,-0.0182539],[-1,-2,0,1],[2628.78,9E+09,9E+09,9E+09,9E+09,9E+09]];

    LOCAL CONST robtarget pSmarTac1:=[[3303.20,-893.34,416.99],[0.415251,-0.0263713,0.909142,-0.0182407],[-1,-2,0,1],[2628.78,9E+09,9E+09,9E+09,9E+09,9E+09]];
    LOCAL CONST robtarget pSmarTac1x:=[[-171.74,1217.50,657.77],[0.247726,-0.646663,-0.687784,-0.217741],[1,-1,1,0],[-458.612,9E+09,9E+09,9E+09,9E+09,9E+09]];
    LOCAL CONST robtarget pSmarTac1y:=[[3276.07,-893.34,416.86],[0.415186,-0.0263263,0.909173,-0.0182127],[-1,-2,0,1],[2628.78,9E+09,9E+09,9E+09,9E+09,9E+09]];
    LOCAL CONST robtarget pSmarTac1z:=[[3303.20,-893.35,447.85],[0.415243,-0.0263483,0.909146,-0.0182198],[-1,-2,0,1],[2628.78,9E+09,9E+09,9E+09,9E+09,9E+09]];
    LOCAL CONST robtarget pSmarTac2:=[[3300.90,-1007.07,426.84],[0.415223,-0.0263448,0.909155,-0.0182423],[-1,-2,0,1],[2628.78,9E+09,9E+09,9E+09,9E+09,9E+09]];
    LOCAL CONST robtarget pSmarTac2x:=[[-171.74,1217.50,657.77],[0.247726,-0.646663,-0.687784,-0.217741],[1,-1,1,0],[-458.612,9E+09,9E+09,9E+09,9E+09,9E+09]];
    LOCAL CONST robtarget pSmarTac2y:=[[3270.09,-1007.10,426.83],[0.41523,-0.0263466,0.909152,-0.0182145],[-1,-2,0,1],[2628.78,9E+09,9E+09,9E+09,9E+09,9E+09]];
    LOCAL CONST robtarget pSmarTac2z:=[[3300.88,-1007.02,483.65],[0.415231,-0.0263267,0.909153,-0.0182011],[-1,-2,0,1],[2628.78,9E+09,9E+09,9E+09,9E+09,9E+09]];

    LOCAL PERS pose poseSmarTac1x:=[[12.8822,0.0789795,-12.6787],[1,0,0,0]];
    LOCAL PERS pose poseSmarTac1y:=[[11.6851,-0.00891113,0.096344],[1,0,0,0]];
    LOCAL PERS pose poseSmarTac1z:=[[0.00170898,-0.000427246,-4.96652],[1,0,0,0]];
    LOCAL PERS pose poseSmarTac2x:=[[23.9402,0.365601,-13.4241],[1,0,0,0]];
    LOCAL PERS pose poseSmarTac2y:=[[11.551,0.00830078,0.00735474],[1,0,0,0]];
    LOCAL PERS pose poseSmarTac2z:=[[0.00561523,-0.0124512,-12.0016],[1,0,0,0]];

    LOCAL CONST robtarget pGrooveStart1:=[[564.65,-860.57,769.47],[0.00890518,-0.704405,-0.709537,-0.0171179],[-1,-1,1,0],[9E+09,9E+09,9E+09,9E+09,0.000717345,9E+09]];
    LOCAL CONST robtarget pGrooveCenter1:=[[565.23,-897.21,769.46],[0.00891009,-0.704407,-0.709534,-0.0171152],[-1,-1,1,0],[9E+09,9E+09,9E+09,9E+09,0.000548556,9E+09]];
    LOCAL CONST robtarget pGrooveCenterHigh1:=[[565.06,-897.10,785.17],[0.00916706,-0.704404,-0.709536,-0.0170713],[-1,-1,1,0],[9E+09,9E+09,9E+09,9E+09,0.000464161,9E+09]];
    LOCAL CONST robtarget pGrooveStart2:=[[440.68,-861.77,769.47],[0.034474,-0.703336,-0.70875,-0.0424811],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,0.000843937,9E+09]];
    LOCAL CONST robtarget pGrooveCenter2:=[[440.69,-919.73,769.47],[0.0344699,-0.703332,-0.708753,-0.0424888],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,0.000843937,9E+09]];
    LOCAL CONST robtarget pGrooveCenterHigh2:=[[440.69,-919.71,783.00],[0.0344806,-0.703328,-0.708756,-0.0425007],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,0.000928332,9E+09]];

    LOCAL PERS pose poseGroove1:=[[0.274048,-11.9581,-4.30115],[1,0,0,0]];
    LOCAL PERS pose poseGrooveDepth1:=[[0.108398,-0.0742188,-11.2883],[1,0,0,0]];
    LOCAL PERS pose poseGroove2:=[[-0.0185242,17.6376,-4.0368],[1,0,0,0]];
    LOCAL PERS pose poseGrooveDepth2:=[[-0.0378418,0.0020752,-11.1818],[1,0,0,0]];

    LOCAL PERS num nGroovewidth1:=29.643;
    LOCAL PERS num nGroovewidth2:=29.5514;

    LOCAL PERS speeddata speedSmarTacAir:=[100,100,100,100];

    LOCAL PERS wobjdata obREF:=[FALSE,TRUE,"",[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
    LOCAL PERS wobjdata obNEW:=[FALSE,TRUE,"",[[0,0,0],[1,0,0,0]],[[96.5379,273.628,-0.429338],[0.993908,-4.89308E-5,-0.000171491,-0.110214]]];

    LOCAL PERS robtarget pOFrame1:=[[1288.24,-347.04,505.51],[2.88902E-05,0.0205337,-0.999789,5.08716E-06],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pOFrame2:=[[1289.75,-241.85,505.52],[2.50088E-05,0.0205319,-0.999789,-4.79308E-07],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pOFrame3:=[[1217.80,-364.71,505.59],[1.20833E-06,0.0205405,-0.999789,2.38206E-05],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    LOCAL PERS robtarget pOFrameHome:=[[1217.76,-424.02,620.34],[2.74717E-05,0.0205586,-0.999789,2.58104E-05],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pOFrameWeld1:=[[1267.23,-312.57,515.22],[5.22405E-06,0.0205324,-0.999789,-1.07349E-05],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pOFrameWeld2:=[[1259.70,-260.73,515.12],[6.21222E-06,0.0204967,-0.99979,-3.48183E-05],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pOFrameWeld3:=[[1223.87,-256.75,514.97],[1.94725E-05,0.0205266,-0.999789,-1.84478E-06],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    LOCAL PERS pose poseOFrame1:=[[-10.944,-0.0508118,0.0443115],[1,0,0,0]];
    LOCAL PERS pose poseOFrame2:=[[12.767,-0.00788879,0.0386658],[1,0,0,0]];
    LOCAL PERS pose poseOFrame3:=[[0.00793457,12.6088,0.00961304],[1,0,0,0]];

    LOCAL PERS robtarget pOFrameSearched1:=[[1277.3,-347.091,505.554],[2.88902E-5,0.0205337,-0.999789,5.08716E-6],[-1,-1,0,1],[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pOFrameSearched2:=[[1302.52,-241.858,505.559],[2.50088E-5,0.0205319,-0.999789,-4.79308E-7],[-1,-1,0,1],[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pOFrameSearched3:=[[1217.81,-352.101,505.6],[1.20833E-6,0.0205405,-0.999789,2.38206E-5],[-1,-1,0,1],[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9]];
    LOCAL PERS pose poseREFFrame:=[[1287.97,-365.717,505.508],[0.712163,0.000448038,0.000375222,0.702014]];
    LOCAL PERS pose poseREFFrameInv:=[[347.145,1292.5,-507.047],[0.712163,-0.000448038,-0.000375222,-0.702014]];
    LOCAL PERS pose poseNewFrame:=[[1272.93,-365.312,505.554],[0.785197,0.000331427,0.000235776,0.619246]];
    LOCAL PERS pose poseNew:=[[0.189416,15.0471,0.0277818],[0.993908,-0.000182604,-8.19325E-5,-0.110214]];

    PROC SmarTacFillet()
        MoveL pSmarTacReady,speedSmarTacAir,fine,toolWeldGun;
        MoveL pSmarTac1,speedSmarTacAir,fine,toolWeldGun;
        MoveL pSmarTac2,speedSmarTacAir,fine,toolWeldGun;
        MoveL pSmarTacReady,speedSmarTacAir,fine,toolWeldGun;
        Search_1D poseSmarTac1y,pSmarTac1y,pSmarTac1,speedSmarTacAir,toolWeldGun;
        Search_1D poseSmarTac1z,pSmarTac1z,pSmarTac1,speedSmarTacAir,toolWeldGun;
        MoveL pSmarTacReady,speedSmarTacAir,fine,toolWeldGun;
        Search_1D poseSmarTac2y,pSmarTac2y,pSmarTac2,speedSmarTacAir,toolWeldGun;
        Search_1D poseSmarTac2z,pSmarTac2z,pSmarTac2,speedSmarTacAir,toolWeldGun;
        PDispSet poseSmarTac1y;
        PDispAdd poseSmarTac1z;
        MoveL pSmarTac1,speedSmarTacAir,fine,toolWeldGun;
        PDispSet poseSmarTac2y;
        PDispAdd poseSmarTac2z;
        MoveL pSmarTac2,speedSmarTacAir,fine,toolWeldGun;
        PDispOff;
        MoveL pSmarTacReady,speedSmarTacAir,fine,toolWeldGun;
    ENDPROC

    PROC SmarTacGroove()
        MoveL pSmarTacReady,speedSmarTacAir,fine,toolWeldGun;
        MoveL pGrooveCenter1,speedSmarTacAir,fine,toolWeldGun;
        MoveL pGrooveCenter2,speedSmarTacAir,fine,toolWeldGun;
        Search_Groove poseGroove1,nGroovewidth1,pGrooveStart1,pGrooveCenter1,20,speedSmarTacAir,toolWeldGun;
        PDispSet poseGroove1;
        Search_1D poseGrooveDepth1,pGrooveCenterHigh1,pGrooveCenter1,speedSmarTacAir,toolWeldGun;
        PDispOff;
        Search_Groove poseGroove2,nGroovewidth2,pGrooveStart2,pGrooveCenter2,20,speedSmarTacAir,toolWeldGun;
        PDispSet poseGroove2;
        Search_1D poseGrooveDepth2,pGrooveCenterHigh2,pGrooveCenter2,speedSmarTacAir,toolWeldGun;
        PDispOff;
        PDispSet poseGroove1;
        PDispAdd poseGrooveDepth1;
        MoveL pGrooveCenter1,speedSmarTacAir,fine,toolWeldGun;
        PDispSet poseGroove2;
        PDispAdd poseGrooveDepth2;
        MoveL pGrooveCenter2,speedSmarTacAir,fine,toolWeldGun;
        PDispOff;
        MoveL pSmarTacReady,speedSmarTacAir,fine,toolWeldGun;
    ENDPROC

    PROC SearchWobjOFrameRefPoints()
        PDispOff;
        MoveL pOFrameHome,v200,fine,toolWeldGun\WObj:=obREF;
        MoveL pOFrame1,v200,fine,toolWeldGun\WObj:=obREF;
        MoveL pOFrame2,v200,fine,toolWeldGun\WObj:=obREF;
        MoveL pOFrame3,v200,fine,toolWeldGun\WObj:=obREF;
        MoveL pOFrameHome,v200,fine,toolWeldGun\WObj:=obREF;
    ENDPROC

    PROC SearchWobjOFrame()
        PDispOff;
        MoveL pOFrameHome,v200,fine,toolWeldGun\WObj:=obREF;
        Search_1D poseOFrame1,offs(pOFrame1,50,0,0),pOFrame1,v200,toolWeldGun\WObj:=obREF;
        MoveL pOFrameHome,v200,fine,toolWeldGun\WObj:=obREF;
        Search_1D poseOFrame2,offs(pOFrame2,50,0,0),pOFrame2,v200,toolWeldGun\WObj:=obREF;
        MoveL pOFrameHome,v200,fine,toolWeldGun\WObj:=obREF;
        Search_1D poseOFrame3,offs(pOFrame3,0,-50,0),pOFrame3,v200,toolWeldGun\WObj:=obREF;
        MoveL pOFrameHome,v200,fine,toolWeldGun\WObj:=obREF;
        obNEW:=OFrameChange(obREF,pOFrame1,pOFrame2,pOFrame3,poseOFrame1,poseOFrame2,poseOFrame3);
    ENDPROC

    PROC WeldByWobjOFrame()
        SearchWobjOFrame;
        MoveJ pOFrameHome,v200,fine,toolWeldGun\WObj:=obNEW;
        MoveL pOFrameWeld1,v200,fine,toolWeldGun\WObj:=obNEW;
        MoveL pOFrameWeld2,v20,z1,toolWeldGun\WObj:=obNEW;
        MoveL pOFrameWeld3,v20,fine,toolWeldGun\WObj:=obNEW;
        MoveJ pOFrameHome,v200,fine,toolWeldGun\WObj:=obNEW;
    ENDPROC

    PROC OFrameChangeTest()
        obNEW:=OFrameChange(obREF,pOFrame1,pOFrame2,pOFrame3,poseOFrame1,poseOFrame2,poseOFrame3);

        pOFrameSearched1.trans:=pOFrame1.trans+poseOFrame1.trans;
        pOFrameSearched2.trans:=pOFrame2.trans+poseOFrame2.trans;
        pOFrameSearched3.trans:=pOFrame3.trans+poseOFrame3.trans;

        poseREFFrame:=DefFrame(pOFrame1,pOFrame2,pOFrame3\Origin:=3);
        poseREFFrameInv:=PoseInv(poseREFFrame);
        poseNewFrame:=DefFrame(pOFrameSearched1,pOFrameSearched2,pOFrameSearched3\Origin:=3);
        
        poseNew:=PoseMult(poseNewFrame,poseREFFrameInv);

    ENDPROC

ENDMODULE