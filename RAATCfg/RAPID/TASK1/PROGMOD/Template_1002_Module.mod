MODULE Template_1002_Module
    !*****************************************************
    !Module Name:   Template_1002_Module
    !Version:       1.0
    !Description:   All the targets are coordinated in its self coordinate system
    !Date:          2021-8-11
    !Author:        Michael
    !*****************************************************

    LOCAL PERS num numPartCount:=1;

    !For oframe searching            
    LOCAL PERS robtarget pQ1_X1:=[[-75,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ1_X2:=[[-30,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ1_Y1:=[[0,75,0],[0.183013,-0.612372,0.683013,-0.353553],[-1,0,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ1_Y2:=[[0,200,0],[0.183013,-0.612372,0.683013,-0.353553],[-1,0,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ1_Z1:=[[0,0,50],[0.562422,0.303603,0.732963,-0.232963],[-1,-2,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ1_Z2:=[[0,0,250],[0.232963,0.732963,-0.303603,0.562422],[-2,-1,1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ1_X1_Found:=[[-75,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ1_X2_Found:=[[-30,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ1_Y1_Found:=[[0,75,0],[0.183013,-0.612372,0.683013,-0.353553],[-1,0,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ1_Y2_Found:=[[0,200,0],[0.183013,-0.612372,0.683013,-0.353553],[-1,0,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ1_Z1_Found:=[[0,0,50],[0.562422,0.303603,0.732963,-0.232963],[-1,-2,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ1_Z2_Found:=[[0,0,250],[0.232963,0.732963,-0.303603,0.562422],[-2,-1,1,1],[-800,500,456,9E+9,9E+9,9E+9]];

    LOCAL PERS robtarget pQ2_X1:=[[-75,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ2_X2:=[[-30,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ2_Y1:=[[0,75,0],[0.183013,-0.612372,0.683013,-0.353553],[-1,0,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ2_Y2:=[[0,200,0],[0.183013,-0.612372,0.683013,-0.353553],[-1,0,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ2_Z1:=[[0,0,50],[0.562422,0.303603,0.732963,-0.232963],[-1,-2,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ2_Z2:=[[0,0,250],[0.232963,0.732963,-0.303603,0.562422],[-2,-1,1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ2_X1_Found:=[[-75,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ2_X2_Found:=[[-30,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ2_Y1_Found:=[[33.41,84.55,17.63],[0.183013,-0.612372,0.683013,-0.353553],[-1,0,-1,1],[-800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pQ2_Y2_Found:=[[30.74,210.18,18.83],[0.183013,-0.612372,0.683013,-0.353553],[-1,0,-1,1],[-800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pQ2_Z1_Found:=[[0,0,50],[0.562422,0.303603,0.732963,-0.232963],[-1,-2,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ2_Z2_Found:=[[32.95,23.7,235.58],[0.232963,0.732963,-0.303603,0.562422],[-2,-1,1,1],[-800,500,456,9E+09,9E+09,9E+09]];

    LOCAL PERS robtarget pQ3_X1:=[[-75,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ3_X2:=[[-30,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ3_Y1:=[[0,75,0],[0.183013,-0.612372,0.683013,-0.353553],[-1,0,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ3_Y2:=[[0,200,0],[0.183013,-0.612372,0.683013,-0.353553],[-1,0,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ3_Z1:=[[0,0,50],[0.562422,0.303603,0.732963,-0.232963],[-1,-2,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ3_Z2:=[[0,0,250],[0.232963,0.732963,-0.303603,0.562422],[-2,-1,1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ3_X1_Found:=[[-75,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ3_X2_Found:=[[-30,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ3_Y1_Found:=[[0,75,0],[0.183013,-0.612372,0.683013,-0.353553],[-1,0,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ3_Y2_Found:=[[0,200,0],[0.183013,-0.612372,0.683013,-0.353553],[-1,0,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ3_Z1_Found:=[[0,0,50],[0.562422,0.303603,0.732963,-0.232963],[-1,-2,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ3_Z2_Found:=[[0,0,250],[0.232963,0.732963,-0.303603,0.562422],[-2,-1,1,1],[-800,500,456,9E+9,9E+9,9E+9]];

    LOCAL PERS robtarget pQ4_X1:=[[-75,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ4_X2:=[[-30,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ4_Y1:=[[0,75,0],[0.183013,-0.612372,0.683013,-0.353553],[-1,0,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ4_Y2:=[[0,200,0],[0.183013,-0.612372,0.683013,-0.353553],[-1,0,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ4_Z1:=[[0,0,50],[0.562422,0.303603,0.732963,-0.232963],[-1,-2,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ4_Z2:=[[0,0,250],[0.232963,0.732963,-0.303603,0.562422],[-2,-1,1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ4_X1_Found:=[[-75,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ4_X2_Found:=[[-30,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ4_Y1_Found:=[[0,75,0],[0.183013,-0.612372,0.683013,-0.353553],[-1,0,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ4_Y2_Found:=[[0,200,0],[0.183013,-0.612372,0.683013,-0.353553],[-1,0,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ4_Z1_Found:=[[0,0,50],[0.562422,0.303603,0.732963,-0.232963],[-1,-2,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ4_Z2_Found:=[[0,0,250],[0.232963,0.732963,-0.303603,0.562422],[-2,-1,1,1],[-800,500,456,9E+9,9E+9,9E+9]];

    LOCAL PERS pose poseFrame:=[[34.6581,25.8235,17.0691],[0.494231,0.495088,0.500876,0.509653]];
    LOCAL PERS pose poseTransform:=[[0,0,0],[0.5,-0.5,-0.5,-0.5]];
    LOCAL PERS pose poseTransform_Q1:=[[0,0,0],[0.5,-0.5,-0.5,-0.5]];
    LOCAL PERS pose poseTransform_Q2:=[[0,0,0],[0.5,-0.5,-0.5,-0.5]];
    LOCAL PERS pose poseTransform_Q3:=[[0,0,0],[0.5,-0.5,-0.5,-0.5]];
    LOCAL PERS pose poseTransform_Q4:=[[0,0,0],[0.5,-0.5,-0.5,-0.5]];

    !Only for local welding parameters
    LOCAL PERS welddata weld_1:=[6,0,[38,0,-1,0,0,350,0,0,0],[0,0,0,0,0,0,0,0,0]];
    LOCAL PERS weavedata weave_1:=[1,0,4,6,0,0,0,0,0,0,0,0,0,0,0];
    LOCAL PERS trackdata track_1:=[0,TRUE,50,[0,30,30,0,0,0,0,0,0],[0,0,0,0,0,0,0]];

    LOCAL PERS robtarget pSearchSeam1_1:=[[-100,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSearchSeam1_2:=[[-25,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSearchSeam2_1:=[[0,0,50],[0.562422,0.303603,0.732963,-0.232963],[-1,-2,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSearchSeam2_2:=[[0,0,250],[0.232963,0.732963,-0.303603,0.562422],[-2,-1,1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSearchSeam3_1:=[[-100,-11,0],[0.379409523,-0.915975615,0.049950211,-0.120590477],[-1,0,-1,1],[-800,-500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSearchSeam3_2:=[[-25,-11,0],[0.379409523,-0.915975615,0.049950211,-0.120590477],[-1,0,-1,1],[-800,-500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSearchSeam4_1:=[[0,-11,50],[0.528109,-0.308093,0.759593,0.221807],[-2,0,0,1],[-800,-500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSearchSeam4_2:=[[0,-11,250],[0.232962913,-0.732962913,-0.303603179,-0.562422224],[-1,1,-2,1],[-800,-500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSearchSeam5_1:=[[-143.5,-25,0],[0.183012702,0.612372436,0.683012702,0.353553391],[-2,-1,-1,1],[-800,-500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSearchSeam5_2:=[[-143.5,-125,0],[0.183012702,0.612372436,0.683012702,0.353553391],[-2,-1,-1,1],[-800,-500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSearchSeam6_1:=[[0,-125,416],[0.353553,0.683013,0.612372,0.183013],[-1,0,2,1],[-800,500,0,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSearchSeam6_2:=[[0,125,416],[0.353553,0.683013,0.612372,0.183013],[-1,0,2,1],[-800,500,0,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSearchSeam7_1:=[[-143.5,25,0],[0.183012702,-0.612372436,0.683012702,-0.353553391],[-1,0,0,1],[-800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSearchSeam7_2:=[[-143.5,125,0],[0.183012702,-0.612372436,0.683012702,-0.353553391],[-1,0,0,1],[-800,500,456,9E+09,9E+09,9E+09]];

    LOCAL PERS robtarget pSeamFound1_1:=[[-112.67,21.51,-17.36],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound1_2:=[[-38.15,23.58,-17.04],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound2_1:=[[0,0,50],[0.562422,0.303603,0.732963,-0.232963],[-1,-2,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeamFound2_2:=[[0,0,250],[0.232963,0.732963,-0.303603,0.562422],[-2,-1,1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeamFound3_1:=[[-100,-11,0],[0.37941,-0.915976,0.0499502,-0.12059],[-1,0,-1,1],[-800,-500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeamFound3_2:=[[-25,-11,0],[0.37941,-0.915976,0.0499502,-0.12059],[-1,0,-1,1],[-800,-500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeamFound4_1:=[[0,-11,50],[0.528109,-0.308093,0.759593,0.221807],[-2,0,0,1],[-800,-500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeamFound4_2:=[[0,-11,250],[0.232963,-0.732963,-0.303603,-0.562422],[-1,1,-2,1],[-800,-500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeamFound5_1:=[[-143.5,-25,0],[0.183013,0.612372,0.683013,0.353553],[-2,-1,-1,1],[-800,-500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeamFound5_2:=[[-143.5,-125,0],[0.183013,0.612372,0.683013,0.353553],[-2,-1,-1,1],[-800,-500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeamFound6_1:=[[0,-125,416],[0.353553,0.683013,0.612372,0.183013],[-1,0,2,1],[-800,500,0,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeamFound6_2:=[[0,125,416],[0.353553,0.683013,0.612372,0.183013],[-1,0,2,1],[-800,500,0,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeamFound7_1:=[[-172.5,144.5,-6],[0.183013,-0.612372,0.683013,-0.353553],[-1,0,0,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeamFound7_2:=[[-172.5,144.5,-6],[0.183013,-0.612372,0.683013,-0.353553],[-1,0,0,1],[-800,500,456,9E+9,9E+9,9E+9]];

    LOCAL PERS pos posoffsetSeam1_1:=[0,0,0];
    LOCAL PERS pos posoffsetSeam1_2:=[0,0,0];
    LOCAL PERS pos posoffsetSeam2_1:=[0,0,0];
    LOCAL PERS pos posoffsetSeam2_2:=[0,0,0];
    LOCAL PERS pos posoffsetSeam3_1:=[0,0,0];
    LOCAL PERS pos posoffsetSeam3_2:=[0,0,0];
    LOCAL PERS pos posoffsetSeam4_1:=[0,0,0];
    LOCAL PERS pos posoffsetSeam4_2:=[0,0,0];
    LOCAL PERS pos posoffsetSeam5_1:=[0,0,0];
    LOCAL PERS pos posoffsetSeam5_2:=[0,0,0];
    LOCAL PERS pos posoffsetSeam6_1:=[0,0,0];
    LOCAL PERS pos posoffsetSeam6_2:=[0,0,0];
    LOCAL PERS pos posoffsetSeam7_1:=[0,0,0];
    LOCAL PERS pos posoffsetSeam7_2:=[0,0,0];

    LOCAL PERS robtarget pSearchSeam11_1:=[[-146.65,98.77,88.48],[0.120561,-0.0499481,0.915981,-0.379407],[-1,-1,2,1],[-799.998,499.998,456.002,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSearchSeam11_2:=[[-79.05,97.49,88.05],[0.120559,-0.0499464,0.915981,-0.379406],[-1,-1,2,1],[-799.998,499.998,456.002,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound11_1:=[[-132.82,-38.83,-1.79],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound11_2:=[[-66.51,-38.39,-1.65],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+09,9E+09,9E+09]];

    LOCAL PERS robtarget pSeam1_1:=[[-132.75,21.51,-17.36],[0.12059,-0.0499502,0.915976,-0.37941],[-1,0,0,1],[-800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam1_2:=[[-66.51,23.58,-17.04],[0.12059,-0.0499502,0.915976,-0.37941],[-1,0,0,1],[-800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam2_1:=[[0,0,0],[0.232962913,0.732962913,-0.303603179,0.562422224],[-1,-1,0,1],[-800.000011921,500,480.000019073,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam2_2:=[[0,0,100],[0.303603,0.562422,-0.232963,0.732963],[-1,-1,0,1],[-800,500,480,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam2_3:=[[0,0,385],[0.303603179,0.562422224,-0.232962913,0.732962913],[-1,-1,0,1],[-800.000011921,500,280.000019073,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam3_1:=[[-132,-11,0],[0.169082,-0.0700359,0.914659,0.360423],[-2,1,1,1],[-800,-500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam3_2:=[[0,-11,0],[0.169082,-0.0700359,0.914659,0.360423],[-2,1,1,1],[-800,-500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam4_1:=[[0,-11,0],[0.232963,-0.732963,-0.303603,-0.562422],[-2,0,-1,1],[-800,-500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam4_2:=[[0,-11,100],[0.303603,-0.562422,-0.232963,-0.732963],[-2,0,-1,1],[-800,-500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam4_3:=[[0,-11,385],[0.303603,-0.562422,-0.232963,-0.732963],[-2,0,-1,1],[-800,-500,256,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam5_1:=[[-143.5,-155.5,0],[0.212631,-0.706434,0.67438,-0.0308436],[-2,0,0,1],[-801,-500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam5_2:=[[-143.5,-11,0],[0.212631,-0.706434,0.67438,-0.0308436],[-2,0,0,1],[-801,-500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam6_1:=[[0,-144.5,416],[0.25,0.25,0.933013,0.0669873],[-1,0,1,1],[-800,500,156,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam6_2:=[[0,144.5,416],[0.25,0.25,0.933013,0.0669873],[-1,0,1,1],[-800,500,156,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam7_1:=[[-172.5,13,-6],[0.270598,0.701057,0.653281,0.0922959],[-2,-1,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam7_2:=[[-172.5,155,-6],[0.270598,0.701057,0.653281,0.0922959],[-1,-1,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];

    !wobjCurrent must be set correctly
    !extOffsetCurrent must be set correctly
    PROC Template_1002()
        Logging "Start to run Template_1002...";
        SetGO Go112_WeldCompleted,0;
        SetGO Go80_WeldingStatus,0;

        IF boolEnableGantryOffset THEN
            EOffsSet extGantryOffsetCurrent;
        ENDIF

        IF boolEnableSearch THEN
            SearchAndProcess;
        ENDIF

        WeldSeam 1;
        WeldSeam 2;
        WeldSeam 3;
        WeldSeam 4;
        WeldSeam 5;
        WeldSeam 6;
        WeldSeam 7;

        EOffsOff;
        Incr numPartCount;
        Logging "Template_1002 is done";

    UNDO
        EOffsOff;
    ENDPROC

    !1 - Search the fine oframe
    !2 - Search the seam offset if needed
    LOCAL PROC SearchAndProcess()
        IF RobOS() THEN
            IF NOT ASFMu_Initialize(Laser_IP_Add,2,TRUE,TRUE,TRUE,toolWeldGun,wobjCurrent) THEN
                TPWrite "The socket between laser and robot error Can't connect to vision controller";
                stop;
            ENDIF
        ENDIF
        SearchOframe;
        IF RobOS() THEN
            IF NOT ASFMu_Clear() THEN
                Stop;
            ENDIF
            wobjTemp.uframe:=PoseMult(wobjCurrent.uframe,wobjCurrent.oframe);
            wobjTemp.oframe:=[[0,0,0],[1,0,0,0]];
            IF NOT ASFMu_Initialize(Laser_IP_Add,2,TRUE,TRUE,TRUE,toolWeldGun,wobjTemp) THEN
                TPWrite "The socket between laser and robot error Can't connect to vision controller";
                stop;
            ENDIF
        ENDIF
        !SearchFeaturePoint;
        !ProcessFeaturePoint;
    ENDPROC

    LOCAL PROC SearchFeaturePoint()
        Logging "SearchFeaturePoint";
        MoveAbsJ [[-0.442793,-43.1611,0,20,-65.6482,0],[-500,500,0,9E+09,9E+09,9E+09]],speedAir,fine,toolLaser\WObj:=wobjCurrent;
        MoveJ pSearchSeam1_1,speedAproach,fine,toolLaser\WObj:=wobjCurrent;
        MoveJ pSearchSeam1_2,speedAproach,fine,toolLaser\WObj:=wobjCurrent;
    ENDPROC

    LOCAL PROC ProcessFeaturePoint()
        Logging "ProcessFeaturePoint";
        pSeam1_1.trans.y:=pSearchSeam1_1.trans.y;
        pSeam1_1.trans.z:=pSearchSeam1_1.trans.z;
        pSeam1_2.trans.y:=pSearchSeam1_2.trans.y;
        pSeam1_2.trans.z:=pSearchSeam1_2.trans.z;

    ENDPROC

    LOCAL PROC SearchOframe()
        Logging "Search oframe";
        wobjCurrent.oframe:=[[0,0,0],[1,0,0,0]];

        MoveAbsJ [[6.85602,-54.7542,33.4881,46.4473,-78.9595,13.6192],[-800,500,0.000119209,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pQ2_Y1_Found,pQ2_Y1,scanJoint2,speedAproach,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pQ2_Y2_Found,pQ2_Y2,scanJoint2,speedAproach,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[-0.442793,-43.1611,0,20,-65.6482,5.56909E-9],[-800,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;

        !MoveAbsJ [[-89.7306,-43.1368,0,-20,-65.7254,9.9994],[-800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        !ScanSeamByLaser pQ2_X1_Found,pQ2_X1,scanJoint2,speedAproach,toolLaser\WObj:=wobjCurrent;
        !ScanSeamByLaser pQ2_X2_Found,pQ2_X2,scanJoint2,speedAproach,toolLaser\WObj:=wobjCurrent;
        !MoveAbsJ [[-89.7306,-43.1368,0,-20,-65.7254,9.9994],[-800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;

        !MoveAbsJ [[-92.7971,-23.7414,5.96932,0,-45.8213,6.36111E-15],[-800,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        !ScanSeamByLaser pQ2_Z1_Found,pQ2_Z1,scanJoint2,speedAproach,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[-92.7971,-23.7414,5.96932,0,-45.8213,0],[-800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pQ2_Z2_Found,pQ2_Z2,scanJoint2,speedAproach,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[-92.7971,-23.7414,5.96932,0,-45.8213,100.384],[-800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;

        !Search YPXN in Wobj0
        poseTransform.rot:=OrientZYX(-90,0,0);
        !Search YPZP in Wobj0
        poseTransform.rot:=OrientZYX(0,-90,-90);

        poseTransform_Q2:=poseTransform;

        poseFrame:=DefFrame(pQ2_Y1_Found,pQ2_Y2_Found,pQ2_Z2_Found\Origin:=3);
        Logging "poseFrame.trans:="+ValToStr(poseFrame.trans);
        Logging "poseFrame.rot:="+GetEulerAngleString(poseFrame.rot);
        wobjCurrent.oframe:=PoseMult(poseFrame,poseTransform);
        wobjCurrent.oframe.trans:=[0,0,0];
        wobjCurrent.oframe.rot:=[1,0,0,0];
        Logging "oframe.trans:="+ValToStr(wobjCurrent.oframe.trans);
        Logging "oframe.rot:="+GetEulerAngleString(wobjCurrent.oframe.rot);

    ENDPROC

    LOCAL PROC WeldSeam(num numSeamIndex)
        VAR dnum dnumWeldSeamStatus;

        dnumWeldSeamStatus:=GOutputDnum(Go112_WeldCompleted);
        BitClear dnumWeldSeamStatus,numSeamIndex;
        SetGO Go112_WeldCompleted,dnumWeldSeamStatus;
        SetGO Go80_WeldingStatus,pow(2,numSeamIndex-1);
        %"Seam_"+ValToStr(numSeamIndex)%;
        SetGO Go80_WeldingStatus,0;
        BitSet dnumWeldSeamStatus,numSeamIndex;
        SetGO Go112_WeldCompleted,dnumWeldSeamStatus;

    ENDPROC

    LOCAL PROC Seam_1()
        !EOffsSet extGantryOffsetCurrent;
        !IF RobOS() THEN
        !IF NOT ASFMu_Initialize(Laser_IP_Add,2,TRUE,TRUE,TRUE,toolLaser,wobjCurrent) THEN
        !TPWrite "The socket between laser and robot error Can't connect to vision controller";
        !stop;
        !ENDIF
        !ENDIF

        MoveAbsJ [[-89.7306,-43.1368,0,-20,-65.7254,9.9994],[-800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound1_1,pSearchSeam1_1,scanJoint2,speedAproach,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound1_2,pSearchSeam1_2,scanJoint2,speedAproach,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[-89.7306,-43.1368,0,-20,-65.7254,9.9994],[-800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;

        pSeam1_1.trans.y:=pSeamFound1_1.trans.y+posoffsetSeam1_1.y;
        pSeam1_1.trans.z:=pSeamFound1_1.trans.z+posoffsetSeam1_1.z;
        pSeam1_2.trans.y:=pSeamFound1_2.trans.y+posoffsetSeam2_1.y;
        pSeam1_2.trans.z:=pSeamFound1_2.trans.z+posoffsetSeam2_1.z;

        !        pSeam1_1.trans:=GetDropFeet(pSeam1_1.trans,pSeamFound1_1.trans,pSeamFound1_2.trans\KeepX);
        !        pSeam1_2.trans:=GetDropFeet(pSeam1_2.trans,pSeamFound1_1.trans,pSeamFound1_2.trans\KeepX);

        MoveAbsJ [[-57.3899,-45,-30,0,40,181.888],[-800,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        MoveJ RelTool(pSeam1_1,0,0,numAproachRelToolZ),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam1_1,speedAproach,seamShared,weldShared_1\Weave:=weaveShared_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_1\SeamName:="WeldSeam";
        ArcLEnd pSeam1_2,speedWeld,seamShared,weldShared_1\Weave:=weaveShared_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_1;
        MoveJ RelTool(pSeam1_2,0,0,numAproachRelToolZ),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        MoveAbsJ [[-57.3899,-45,-30,0,40,181.888],[-800,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
    ENDPROC

    LOCAL PROC Seam_11()
        EOffsSet extGantryOffsetCurrent;
        IF RobOS() THEN
            IF NOT ASFMu_Initialize(Laser_IP_Add,2,TRUE,TRUE,TRUE,toolLaser,wobjCurrent) THEN
                TPWrite "The socket between laser and robot error Can't connect to vision controller";
                stop;
            ENDIF
        ENDIF

        !MoveAbsJ [[-89.7306,-43.1368,0,-20,-65.7254,9.9994],[-800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound11_1,pSearchSeam11_1,scanJoint2,speedAproach,toolWeldGun\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound11_2,pSearchSeam11_2,scanJoint2,speedAproach,toolWeldGun\WObj:=wobjCurrent;
        !MoveAbsJ [[-89.7306,-43.1368,0,-20,-65.7254,9.9994],[-800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;

        pSeam1_1.trans.x:=pSeamFound11_1.trans.x;
        pSeam1_1.trans.y:=pSeamFound11_1.trans.y;
        pSeam1_1.trans.z:=pSeamFound11_1.trans.z;
        pSeam1_2.trans.x:=pSeamFound11_2.trans.x;
        pSeam1_2.trans.y:=pSeamFound11_2.trans.y;
        pSeam1_2.trans.z:=pSeamFound11_2.trans.z;

        !MoveAbsJ [[-57.3899,-45,-30,0,40,181.888],[-800,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        MoveJ RelTool(pSeam1_1,0,0,numAproachRelToolZ),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam1_1,speedAproach,seamShared,weldShared_1\Weave:=weaveShared_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_1\SeamName:="WeldSeam";
        ArcLEnd pSeam1_2,speedWeld,seamShared,weldShared_1\Weave:=weaveShared_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_1;
        MoveJ RelTool(pSeam1_2,0,0,numAproachRelToolZ),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        MoveAbsJ [[-57.3899,-45,-30,0,40,181.888],[-800,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
    ENDPROC

    LOCAL PROC Seam_2()
        MoveAbsJ [[-92.7971,-23.7414,5.96932,0,-45.8213,0],[-800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound2_1,pSearchSeam2_1,scanJoint2,speedAproach,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound2_2,pSearchSeam2_2,scanJoint2,speedAproach,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[-92.7971,-23.7414,5.96932,0,-45.8213,100.384],[-800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;

        pSeam2_1.trans.x:=pSeamFound2_1.trans.x+posoffsetSeam2_1.x;
        pSeam2_1.trans.y:=pSeamFound2_1.trans.y+posoffsetSeam2_1.y;
        pSeam2_2.trans.x:=pSeamFound2_1.trans.x+posoffsetSeam2_1.x;
        pSeam2_2.trans.y:=pSeamFound2_1.trans.y+posoffsetSeam2_1.y;
        pSeam2_3.trans.x:=pSeamFound2_2.trans.x+posoffsetSeam2_2.x;
        pSeam2_3.trans.y:=pSeamFound2_2.trans.y+posoffsetSeam2_2.y;

        MoveAbsJ [[-89.1336,-19.4308,4.46111,-6.28607,-45.2808,89.8206],[-800,500,89.6952,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        MoveJ RelTool(pSeam2_1,0,0,numAproachRelToolZ),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam2_1,speedAproach,seamShared,weldShared_2\Weave:=weaveShared_2,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_2\SeamName:="WeldSeam";
        ArcL pSeam2_2,speedWeld,seamShared,weldShared_2\Weave:=weaveShared_2,z0,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_2;
        ArcLEnd pSeam2_3,speedWeld,seamShared,weldShared_2\Weave:=weaveShared_2,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_2;
        MoveJ RelTool(pSeam2_3,0,0,numAproachRelToolZ),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        MoveAbsJ [[-89.1336,-19.4308,4.46111,-6.28607,-45.2808,89.8206],[-800,500,89.6952,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        MoveAbsJ [[-89.1336,-30,30,90,-90,89.8206],[-800,500,89.6952,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
    ENDPROC

    LOCAL PROC Seam_3()
        MoveAbsJ [[-90.1743,-20,20,90,-75.7744,1.05127],[-800,-500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[-90.1743,-20,30,0,-75.7744,1.05127],[-800,-500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound3_1,pSearchSeam3_1,scanJoint2,speedAproach,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound3_2,pSearchSeam3_2,scanJoint2,speedAproach,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[-90.1743,-20,20,0,-75.7744,1.05127],[-800,-500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;

        pSeam3_1.trans.y:=pSeamFound3_1.trans.y+posoffsetSeam3_1.y;
        pSeam3_1.trans.z:=pSeamFound3_1.trans.z+posoffsetSeam3_1.z;
        pSeam3_2.trans.y:=pSeamFound3_2.trans.y+posoffsetSeam3_2.y;
        pSeam3_2.trans.z:=pSeamFound3_2.trans.z+posoffsetSeam3_2.z;

        MoveAbsJ [[-75,-60,10,91.0512,-30,120.621],[-800,-500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        MoveJ RelTool(pSeam3_1,0,0,numAproachRelToolZ),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam3_1,speedAproach,seamShared,weldShared_1\Weave:=weaveShared_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_1\SeamName:="WeldSeam";
        ArcLEnd pSeam3_2,speedWeld,seamShared,weldShared_1\Weave:=weaveShared_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_1;
        MoveJ RelTool(pSeam3_2,0,0,numAproachRelToolZ),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        MoveAbsJ [[-75,-60,10,91.0512,-30,120.621],[-800,-500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
    ENDPROC

    LOCAL PROC Seam_4()
        MoveAbsJ [[-54.7922,-70.5062,45,3.90715,-68.4188,36.4322],[-800,-500,1.86265E-6,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound4_1,pSearchSeam4_1,scanJoint2,speedAproach,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound4_2,pSearchSeam4_2,scanJoint2,speedAproach,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[-85.1215,-60,0,79.4456,-20,-91.3062],[-800,-500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;

        pSeam4_1.trans.x:=pSeamFound4_1.trans.x+posoffsetSeam4_1.x;
        pSeam4_1.trans.y:=pSeamFound4_1.trans.y+posoffsetSeam4_1.y;
        pSeam4_2.trans.x:=pSeamFound4_1.trans.x+posoffsetSeam4_1.x;
        pSeam4_2.trans.y:=pSeamFound4_1.trans.y+posoffsetSeam4_1.y;
        pSeam4_3.trans.x:=pSeamFound4_2.trans.x+posoffsetSeam4_2.x;
        pSeam4_3.trans.y:=pSeamFound4_2.trans.y+posoffsetSeam4_2.y;

        MoveAbsJ [[-85.1215,-60,0,79.4456,-20,-91.3062],[-800,-500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        MoveJ RelTool(pSeam4_1,0,0,numAproachRelToolZ),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam4_1,speedAproach,seamShared,weldShared_2\Weave:=weaveShared_2,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_2\SeamName:="WeldSeam";
        ArcL pSeam4_2,speedWeld,seamShared,weldShared_2\Weave:=weaveShared_2,z0,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_2;
        ArcLEnd pSeam4_3,speedWeld,seamShared,weldShared_2\Weave:=weaveShared_2,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_2;
        MoveJ RelTool(pSeam4_3,0,0,numAproachRelToolZ),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        MoveAbsJ [[-85.1215,-60,0,79.4456,-20,-91.3062],[-800,-500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
    ENDPROC

    LOCAL PROC Seam_5()
        MoveAbsJ [[-90,-45.3776,29.7092,-26.0507,-60,-40.1141],[-800,-500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound5_1,pSearchSeam5_1,scanJoint1,speedAproach,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound5_2,pSearchSeam5_2,scanJoint1,speedAproach,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[-90,-45.3776,29.7092,-26.0507,-60,-40.1141],[-800,-500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;

        pSeam5_1.trans.x:=pSeamFound5_1.trans.x+posoffsetSeam5_1.x;
        pSeam5_1.trans.z:=pSeamFound5_1.trans.z+posoffsetSeam5_1.z;
        pSeam5_2.trans.x:=pSeamFound5_2.trans.x+posoffsetSeam5_2.x;
        pSeam5_2.trans.z:=pSeamFound5_2.trans.z+posoffsetSeam5_2.z;

        MoveAbsJ [[-74.7099,-20,20,0,-83.9333,65.6609],[-801,-500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        MoveJ RelTool(pSeam5_1,0,0,numAproachRelToolZ),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam5_1,speedAproach,seamShared,weldShared_3\Weave:=weaveShared_3,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_3\SeamName:="WeldSeam";
        ArcLEnd pSeam5_2,speedWeld,seamShared,weldShared_3\Weave:=weaveShared_3,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_3;
        MoveJ RelTool(pSeam5_2,0,0,numAproachRelToolZ),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        MoveAbsJ [[-74.7099,-20,20,0,-83.9333,65.6609],[-801,-500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
    ENDPROC

    LOCAL PROC Seam_6()
        MoveAbsJ [[-27.0778,-20,20,40.6952,-70,141.057],[-800,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound6_1,pSearchSeam6_1,scanJoint1,speedAproach,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound6_2,pSearchSeam6_2,scanJoint1,speedAproach,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[-27.0778,-20,20,40.6952,-70,141.057],[-800,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;

        pSeam6_1.trans.x:=pSeamFound6_1.trans.x+posoffsetSeam6_1.x;
        pSeam6_1.trans.z:=pSeamFound6_1.trans.z+posoffsetSeam6_1.z;
        pSeam6_2.trans.x:=pSeamFound6_2.trans.x+posoffsetSeam6_2.x;
        pSeam6_2.trans.z:=pSeamFound6_2.trans.z+posoffsetSeam6_2.z;

        MoveAbsJ [[-27.0778,-20,20,40.6952,-70,141.057],[-800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        MoveJ RelTool(pSeam6_1,0,0,numAproachRelToolZ),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam6_1,speedAproach,seamShared,weldShared_3\Weave:=weaveShared_3,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_3\SeamName:="WeldSeam";
        ArcLEnd pSeam6_2,speedWeld,seamShared,weldShared_3\Weave:=weaveShared_3,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_3;
        MoveJ RelTool(pSeam6_2,0,0,numAproachRelToolZ),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        MoveAbsJ [[-27.0778,-20,20,40.6952,-70,141.057],[-800,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
    ENDPROC

    LOCAL PROC Seam_7()
        MoveAbsJ [[-46.062,-60,29.8365,31.1131,-33.8128,32.5521],[-800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound7_1,pSearchSeam7_1,scanJoint1,speedAproach,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound7_2,pSearchSeam7_2,scanJoint1,speedAproach,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[-46.062,-60,29.8365,31.1131,-33.8128,32.5521],[-800,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;

        pSeam7_1.trans.x:=pSeamFound7_1.trans.x+posoffsetSeam7_1.x;
        pSeam7_1.trans.z:=pSeamFound7_1.trans.z+posoffsetSeam7_1.z;
        pSeam7_2.trans.x:=pSeamFound7_2.trans.x+posoffsetSeam7_2.x;
        pSeam7_2.trans.z:=pSeamFound7_2.trans.z+posoffsetSeam7_2.z;

        MoveAbsJ [[-57.8525,-46.5622,23.0288,10.0453,-41.145,3.82011],[-800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        MoveJ RelTool(pSeam7_1,0,0,numAproachRelToolZ),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam7_1,speedAproach,seamShared,weldShared_3\Weave:=weaveShared_3,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_3\SeamName:="WeldSeam";
        ArcLEnd pSeam7_2,speedWeld,seamShared,weldShared_3\Weave:=weaveShared_3,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_3;
        MoveJ RelTool(pSeam7_2,0,0,numAproachRelToolZ),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        MoveAbsJ [[-57.8525,-46.5622,23.0288,10.0453,-41.145,3.82011],[-800,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
    ENDPROC

ENDMODULE