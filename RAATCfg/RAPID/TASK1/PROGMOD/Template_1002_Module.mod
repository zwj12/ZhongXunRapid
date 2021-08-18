MODULE Template_1002_Module
    !*****************************************************
    !Module Name:   Template_1002_Module
    !Version:       1.0
    !Description:   All the targets are coordinated in its self coordinate system
    !Date:          2021-8-11
    !Author:        Michael
    !*****************************************************

    LOCAL PERS num numPartCount:=7;

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
    LOCAL PERS robtarget pQ2_Y1:=[[-0.03,74.99,-0.03],[0.0903086,-0.672569,0.657682,-0.327031],[-1,-1,0,1],[-800,500,456.001,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pQ2_Y2:=[[-0.03,200,-0.03],[0.0903092,-0.67257,0.657681,-0.327031],[-1,-1,0,1],[-800,500,456.001,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pQ2_Z1:=[[0,0,50],[0.562422,0.303603,0.732963,-0.232963],[-1,-2,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ2_Z2:=[[0,0,250],[0.232963,0.732963,-0.303603,0.562422],[-2,-1,1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ2_X1_Found:=[[-75,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ2_X2_Found:=[[-30,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ2_Y1_Found:=[[-0.03,74.99,-0.03],[0.0903086,-0.672569,0.657682,-0.327031],[-1,-1,0,1],[-800,500,456.001,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ2_Y2_Found:=[[15.26,215.28,0.08],[0.183013,-0.612372,0.683013,-0.353553],[-1,0,-1,1],[-800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pQ2_Z1_Found:=[[0,0,50],[0.562422,0.303603,0.732963,-0.232963],[-1,-2,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ2_Z2_Found:=[[16.14,6.63,231.75],[0.232963,0.732963,-0.303603,0.562422],[-2,-1,1,1],[-800,500,456,9E+09,9E+09,9E+09]];

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

    LOCAL PERS pose poseFrame:=[[19.508,7.76009,-1.01384],[0.497134,0.492225,0.50043,0.510041]];
    LOCAL PERS pose poseTransform:=[[0,0,0],[0.5,-0.5,-0.5,-0.5]];
    LOCAL PERS pose poseTransform_Q1:=[[0,0,0],[0.5,-0.5,-0.5,-0.5]];
    LOCAL PERS pose poseTransform_Q2:=[[0,0,0],[0.5,-0.5,-0.5,-0.5]];
    LOCAL PERS pose poseTransform_Q3:=[[0,0,0],[0.5,-0.5,-0.5,-0.5]];
    LOCAL PERS pose poseTransform_Q4:=[[0,0,0],[0.5,-0.5,-0.5,-0.5]];

    LOCAL PERS robtarget pSearchSeam1_1:=[[-100,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,4,1],[-800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSearchSeam1_2:=[[-25,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,4,1],[-800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSearchSeam2_1:=[[0,0,50],[0.562422,0.303603,0.732963,-0.232963],[-1,-2,3,1],[-800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSearchSeam2_2:=[[0,0,250],[0.232963,0.732963,-0.303603,0.562422],[-2,-1,1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSearchSeam3_1:=[[-100,-11,0],[0.379409523,-0.915975615,0.049950211,-0.120590477],[-1,0,-1,1],[-800,-500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSearchSeam3_2:=[[-25,-11,0],[0.379409523,-0.915975615,0.049950211,-0.120590477],[-1,0,-1,1],[-800,-500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSearchSeam4_1:=[[0,-11,50],[0.528109,-0.308093,0.759593,0.221807],[-2,0,0,1],[-800,-500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSearchSeam4_2:=[[0,-11,250],[0.232963,-0.732963,-0.303603,-0.562422],[-1,1,2,1],[-800,-500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSearchSeam5_1:=[[-143.5,-25,0],[0.051556,-0.666714,-0.684628,-0.290031],[-2,0,3,1],[-800,-500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSearchSeam5_2:=[[-143.5,-125,0],[0.0515572,-0.666714,-0.684629,-0.290031],[-2,0,3,1],[-800,-500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSearchSeam6_1:=[[0.00,-116.94,434.86],[0.353553,0.683013,0.612372,0.183013],[-1,0,2,1],[-800,500,-0.00013411,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSearchSeam6_2:=[[0.00,125.00,432.02],[0.353552,0.683013,0.612373,0.183012],[-1,0,2,1],[-800,500,-0.00013411,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSearchSeam7_1:=[[-156.56,23.99,-0.01],[0.0113895,0.681242,-0.666782,0.301962],[-1,-1,0,1],[-800,500,456.001,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSearchSeam7_2:=[[-156,100,0],[0.0113914,0.681237,-0.666784,0.30197],[-1,-1,0,1],[-800,500,456,9E+09,9E+09,9E+09]];

    LOCAL PERS robtarget pSeamFound1_1:=[[-114.61,-5.93,1.19],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound1_2:=[[-40,-4.05,1.53],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound2_1:=[[-0.42,-0.02,65.59],[0.562422,0.303603,0.732963,-0.232963],[-1,-2,-1,1],[-800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound2_2:=[[-3.55,-0.87,234.86],[0.232963,0.732963,-0.303603,0.562422],[-2,-1,1,1],[-800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound3_1:=[[-115.57,-14.92,-2.83],[0.37941,-0.915976,0.0499502,-0.12059],[-1,0,-1,1],[-800,-500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound3_2:=[[-40.22,-12.64,-3.01],[0.37941,-0.915976,0.0499502,-0.12059],[-1,0,-1,1],[-800,-500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound4_1:=[[-6.34,-11.47,67.44],[0.528109,-0.308093,0.759593,0.221807],[-2,0,0,1],[-800,-500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound4_2:=[[-7.07,-12.9,236.04],[0.232963,-0.732963,-0.303603,-0.562422],[-1,1,-2,1],[-800,-500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound5_1:=[[-143.73,-40.22,-3.44],[0.183013,0.612372,0.683013,0.353553],[-2,-1,-1,1],[-800,-500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound5_2:=[[-141.05,-139.63,-3.99],[0.0515551,-0.666714,-0.684629,-0.290031],[-2,0,-1,1],[-800,-500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound6_1:=[[-1.63,-129.49,447.51],[0.353553,0.683013,0.612372,0.183013],[-1,0,2,1],[-800,500,0,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound6_2:=[[-6.7,113.51,444.9],[0.353553,0.683013,0.612372,0.183013],[-1,0,2,1],[-800,500,0,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound7_1:=[[-142.52,40.16,0.34],[0.183013,-0.612372,0.683013,-0.353553],[-1,0,0,1],[-800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound7_2:=[[-143.83,116.32,0.49],[0.183013,-0.612372,0.683013,-0.353553],[-1,0,0,1],[-800,500,456,9E+09,9E+09,9E+09]];

    LOCAL PERS robtarget pSeam1_1:=[[-132,0,0],[0.12059,-0.0499502,0.915976,-0.37941],[-1,0,0,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam1_2:=[[-10,0,0],[0.12059,-0.0499502,0.915976,-0.37941],[-1,0,0,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam2_1:=[[0,0,10],[0.232962913,0.732962913,-0.303603179,0.562422224],[-1,-1,0,1],[-800.000011921,500,480.000019073,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam2_2:=[[0.00,0.00,100.00],[0.319156,0.553743,-0.253295,0.726188],[-1,-2,1,1],[-800,500,480,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam2_3:=[[0,0,385],[0.325934,0.549781,-0.262196,0.723022],[-1,-2,1,1],[-800,500,280,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam3_1:=[[-132,-11,0],[0.169082,-0.0700359,0.914659,0.360423],[-2,1,1,1],[-800,-500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam3_2:=[[-10,-11,0],[0.169082,-0.0700359,0.914659,0.360423],[-2,1,1,1],[-800,-500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam4_1:=[[0.00,-11.00,10.00],[0.266412,-0.657996,-0.396353,-0.582212],[-2,0,2,1],[-800,-500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam4_2:=[[0.00,-11.02,99.95],[0.287699,-0.546881,-0.304884,-0.724704],[-2,1,2,1],[-800,-500,456.003,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam4_3:=[[0,-11,390],[0.303603,-0.562422,-0.232963,-0.732963],[-2,0,3,1],[-800,-500,256,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam5_1:=[[-143.5,-155.5,0],[0.212631,-0.706434,0.67438,-0.0308436],[-2,0,0,1],[-801,-500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam5_2:=[[-143.5,-21,0],[0.212631,-0.706434,0.67438,-0.0308436],[-2,0,0,1],[-801,-500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam5_3:=[[-143.5,-21,0],[0.212631,-0.706434,0.67438,-0.0308436],[-2,0,0,1],[-801,-500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam6_1:=[[0,-144.5,416],[0.25,0.25,0.933013,0.0669873],[-1,0,1,1],[-800,500,156,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam6_2:=[[0,144.5,416],[0.25,0.25,0.933013,0.0669873],[-1,0,1,1],[-800,500,156,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam7_1:=[[-143.5,25,0],[0.270598,0.701057,0.653281,0.0922959],[-2,-1,3,1],[-800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam7_2:=[[-143.5,125,0],[0.270598,0.701057,0.653281,0.0922959],[-1,-1,3,1],[-800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam7_3:=[[-143.5,125,0],[0.270598,0.701057,0.653281,0.0922959],[-1,-1,3,1],[-800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam8_1:=[[-143.5,-155.5,0],[0.212631,-0.706434,0.67438,-0.0308436],[-2,0,0,1],[-801,-500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam8_2:=[[-143.5,-21,0],[0.212631,-0.706434,0.67438,-0.0308436],[-2,0,0,1],[-801,-500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam8_3:=[[-143.5,-21,0],[0.212631,-0.706434,0.67438,-0.0308436],[-2,0,0,1],[-801,-500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam9_1:=[[0,-144.5,416],[0.25,0.25,0.933013,0.0669873],[-1,0,1,1],[-800,500,156,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam9_2:=[[0,144.5,416],[0.25,0.25,0.933013,0.0669873],[-1,0,1,1],[-800,500,156,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam10_1:=[[-143.5,25,0],[0.270598,0.701057,0.653281,0.0922959],[-2,-1,3,1],[-800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam10_2:=[[-143.5,125,0],[0.270598,0.701057,0.653281,0.0922959],[-1,-1,3,1],[-800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam10_3:=[[-143.5,125,0],[0.270598,0.701057,0.653281,0.0922959],[-1,-1,3,1],[-800,500,456,9E+09,9E+09,9E+09]];

    !Only used to compensate Absolute Accuracy Offset
    LOCAL PERS pos posAOSeam1_1:=[0,0,0];
    LOCAL PERS pos posAOSeam1_2:=[0,0,0];
    LOCAL PERS pos posAOSeam2_1:=[0,-2,0];
    LOCAL PERS pos posAOSeam2_2:=[0,-2,0];
    LOCAL PERS pos posAOSeam2_3:=[6,0,0];
    LOCAL PERS pos posAOSeam3_1:=[4,0,-6];
    LOCAL PERS pos posAOSeam3_2:=[0,-6,0];
    LOCAL PERS pos posAOSeam4_1:=[-2,3,0];
    LOCAL PERS pos posAOSeam4_2:=[-1,6,0];
    LOCAL PERS pos posAOSeam4_3:=[0,10,0];
    LOCAL PERS pos posAOSeam5_1:=[0,0,0];
    LOCAL PERS pos posAOSeam5_2:=[0,0,0];
    LOCAL PERS pos posAOSeam5_3:=[0,0,0];
    LOCAL PERS pos posAOSeam6_1:=[-20,0,0];
    LOCAL PERS pos posAOSeam6_2:=[-20,0,0];
    LOCAL PERS pos posAOSeam7_1:=[0,0,0];
    LOCAL PERS pos posAOSeam7_2:=[0,0,0];
    LOCAL PERS pos posAOSeam7_3:=[0,0,0];
    LOCAL PERS pos posAOSeam8_1:=[0,0,0];
    LOCAL PERS pos posAOSeam8_2:=[0,0,0];
    LOCAL PERS pos posAOSeam8_3:=[0,0,0];
    LOCAL PERS pos posAOSeam9_1:=[-20,0,0];
    LOCAL PERS pos posAOSeam9_2:=[-20,0,0];
    LOCAL PERS pos posAOSeam10_1:=[0,0,0];
    LOCAL PERS pos posAOSeam10_2:=[0,0,0];
    LOCAL PERS pos posAOSeam10_3:=[0,0,0];

    !Used for PDispSet
    LOCAL PERS pose poseDispSeam1_1:=[[0.155304,-6.36427,1.11146],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam1_2:=[[0.0753555,-3.29217,1.66705],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam2_1:=[[0.607692,-1.74091,0.0125351],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam2_2:=[[-1.0559,-2.19269,-0.0204926],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam2_3:=[[-0.32395,-1.62331,-0.125092],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam3_1:=[[4.12688,-4.41331,-8.79105],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam3_2:=[[0.0145874,-6.72514,-3.08223],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam4_1:=[[-8.09118,3.01741,-0.0262299],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam4_2:=[[-7.48061,5.27455,-0.0342102],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam4_3:=[[-7.73635,6.79469,-0.0606995],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam5_1:=[[2.87514,0.100067,-4.07725],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam5_2:=[[-0.748108,-0.00172424,-3.33367],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam5_3:=[[-0.748108,-0.00172424,-3.33367],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam6_1:=[[-21.3233,0.312531,31.6679],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam6_2:=[[-27.3498,0.153458,28.5655],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam7_1:=[[1.2404,0.0207253,0.310183],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam7_2:=[[-0.479141,-0.00924683,0.507077],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam7_3:=[[-0.479141,-0.00924683,0.507077],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam8_1:=[[2.8342,0.0904541,-4.80138],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam8_2:=[[-0.692978,0.00148392,-4.16271],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam8_3:=[[-0.692978,0.00148392,-4.16271],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam9_1:=[[-22.565,0.286362,30.3056],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam9_2:=[[-28.5206,0.127365,27.0722],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam10_1:=[[1.15506,0.0231094,-0.816231],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam10_2:=[[-0.668945,-0.010788,-0.566907],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam10_3:=[[-0.668945,-0.010788,-0.566907],[1,0,0,0]];

    !Only for local welding parameters
    LOCAL PERS welddata weld_1:=[6,0,[38,0,-1,0,0,350,0,0,0],[0,0,0,0,0,0,0,0,0]];
    LOCAL PERS weavedata weave_1:=[1,0,4,6,0,0,0,0,0,0,0,0,0,0,0];
    LOCAL PERS trackdata track_1:=[0,TRUE,50,[0,30,30,0,0,0,0,0,0],[0,0,0,0,0,0,0]];

    !wobjCurrent must be set correctly
    !extOffsetCurrent must be set correctly
    PROC Template_1002()
        Logging "Start to run Template_1002...";
        SetGO Go112_WeldCompleted,0;
        SetGO Go80_WeldingStatus,0;

        IF boolEnableGantryOffset THEN
            EOffsSet extGantryOffsetCurrent;
        ENDIF

        MoveToReadyQuadrant 2;
        IF boolEnableSearch THEN
            SearchAndProcess;
        ENDIF

        InhibWeld TRUE\Weld;

        WeldSeam 1;
        WeldSeam 2;
        MoveToReadyQuadrant 2;

        MoveToReadyQuadrant 3;
        WeldSeam 3;
        WeldSeam 4;

        InhibWeld TRUE\Weld\Weave;

        WeldSeam 5;
        MoveToReadyQuadrant 3;

        MoveToReadyQuadrant 2;
        WeldSeam 6;
        WeldSeam 7;
        MoveToReadyQuadrant 2;

        !        MoveToReadyQuadrant 3;
        !        WeldSeam 8;
        !        MoveToReadyQuadrant 3;

        !        MoveToReadyQuadrant 2;
        !        WeldSeam 9;
        !        WeldSeam 10;
        !        MoveToReadyQuadrant 2;

        EOffsOff;
        Incr numPartCount;
        Logging "Template_1002 is done";

    UNDO
        EOffsOff;
    ENDPROC

    !1 - Search the fine oframe
    !2 - Search the seam offset if needed
    LOCAL PROC SearchAndProcess()
        !        IF RobOS() THEN
        !            IF NOT ASFMu_Initialize(Laser_IP_Add,2,TRUE,TRUE,TRUE,toolWeldGun,wobjCurrent) THEN
        !                TPWrite "The socket between laser and robot error Can't connect to vision controller";
        !                stop;
        !            ENDIF
        !        ENDIF
        SearchOframe;
        !        IF RobOS() THEN
        !            IF NOT ASFMu_Clear() THEN
        !                Stop;
        !            ENDIF
        !            IF NOT ASFMu_Initialize(Laser_IP_Add,2,TRUE,TRUE,TRUE,toolWeldGun,wobjCurrent) THEN
        !                TPWrite "The socket between laser and robot error Can't connect to vision controller";
        !                stop;
        !            ENDIF
        !        ENDIF
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

        MoveAbsJ [[-40.1504,-68.9705,41.6796,27.6411,-20.5006,108.121],[-800,500,-0.00013411,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
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
        !wobjCurrent.oframe.trans:=[0,0,0];
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
        !ReloadGantryOffset;

        MoveAbsJ [[-89.7306,-43.1368,0,-20,-65.7254,270],[-800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound1_1,pSearchSeam1_1,scanJoint1,speedAproach,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound1_2,pSearchSeam1_2,scanJoint1,speedAproach,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[-89.7306,-43.1368,0,-20,-65.7254,270],[-800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;

        RefreshDisplacement poseDispSeam1_1,posAOSeam1_1,pSeam1_1,pSeamFound1_1,pSeamFound1_2;
        RefreshDisplacement poseDispSeam1_2,posAOSeam1_2,pSeam1_2,pSeamFound1_1,pSeamFound1_2;

        MoveAbsJ [[-57.3899,-45,-30,0,40,181.888],[-800,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

        PDispSet poseDispSeam1_1;
        MoveJ GetAproachTarget(pSeam1_1),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam1_1,speedAproach,seamShared,weldShared_1\Weave:=weaveShared_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_1\SeamName:="WeldSeam";
        PDispSet poseDispSeam1_2;
        ArcLEnd pSeam1_2,speedWeld,seamShared,weldShared_1\Weave:=weaveShared_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_1;
        MoveL GetAproachTarget(pSeam1_2),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        PDispOff;

        MoveAbsJ [[-57.3899,-45,-30,0,40,181.888],[-800,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

    UNDO
        PDispOff;
    ENDPROC

    LOCAL PROC Seam_2()
        MoveAbsJ [[-92.7971,-23.7414,5.96932,0,-45.8213,0],[-800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound2_1,pSearchSeam2_1,scanJoint2,speedAproach,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound2_2,pSearchSeam2_2,scanJoint2,speedAproach,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[-92.7971,-23.7414,5.96932,0,-45.8213,100.384],[-800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;

        RefreshDisplacement poseDispSeam2_1,posAOSeam2_1,pSeam2_1,pSeamFound2_1,pSeamFound2_2;
        RefreshDisplacement poseDispSeam2_2,posAOSeam2_2,pSeam2_2,pSeamFound2_1,pSeamFound2_2;
        RefreshDisplacement poseDispSeam2_3,posAOSeam2_3,pSeam2_3,pSeamFound2_1,pSeamFound2_2;

        !poseDispSeam2_1.trans.z:=pSeamFound1_1.trans.z-pSeam1_1.trans.z+posAOSeam2_1.z;

        MoveAbsJ [[-89.1336,-19.4308,4.46111,-6.28607,-45.2808,89.8206],[-800,500,89.6952,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

        PDispSet poseDispSeam2_1;
        MoveJ GetAproachTarget(pSeam2_1),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam2_1,speedAproach,seamShared,weldShared_2\Weave:=weaveShared_2,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_2\SeamName:="WeldSeam";
        PDispSet poseDispSeam2_2;
        ArcL pSeam2_2,speedWeld,seamShared,weldShared_2\Weave:=weaveShared_2,zoneWeld,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_2;
        PDispSet poseDispSeam2_3;
        ArcLEnd pSeam2_3,speedWeld,seamShared,weldShared_2\Weave:=weaveShared_2,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_2;
        MoveL GetAproachTarget(pSeam2_3),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        PDispOff;

        MoveAbsJ [[-89.1336,-19.4308,4.46111,-6.28607,-45.2808,89.8206],[-800,500,89.6952,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        MoveAbsJ [[-89.1336,-30,30,90,-90,89.8206],[-800,500,89.6952,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

    UNDO
        PDispOff;
    ENDPROC

    LOCAL PROC Seam_3()
        MoveAbsJ [[-90.1743,-20.0001,19.9999,90.0001,-75.7744,56.0873],[-800,-500,-0.00013411,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[-90.1743,-19.9999,30,-6.4176,-75.7746,28.7485],[-800,-500,-0.00013411,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound3_1,pSearchSeam3_1,scanJoint3,speedAproach,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound3_2,pSearchSeam3_2,scanJoint3,speedAproach,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[-90.1743,-28.203,36.4509,-5.46308E-05,-75.7745,37.1404],[-800,-500,0.000245869,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;

        RefreshDisplacement poseDispSeam3_1,posAOSeam3_1,pSeam3_1,pSeamFound3_1,pSeamFound3_2;
        RefreshDisplacement poseDispSeam3_2,posAOSeam3_2,pSeam3_2,pSeamFound3_1,pSeamFound3_2;

        MoveAbsJ [[-75,-60,10,91.0512,-30,120.621],[-800,-500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

        PDispSet poseDispSeam3_1;
        MoveJ GetAproachTarget(pSeam3_1),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam3_1,speedAproach,seamShared,weldShared_1\Weave:=weaveShared_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_1\SeamName:="WeldSeam";
        PDispSet poseDispSeam3_2;
        ArcLEnd pSeam3_2,speedWeld,seamShared,weldShared_1\Weave:=weaveShared_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_1;
        MoveL GetAproachTarget(pSeam3_2),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        PDispOff;

        MoveAbsJ [[-75,-60,10,91.0512,-30,120.621],[-800,-500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

    UNDO
        PDispOff;
    ENDPROC

    LOCAL PROC Seam_4()
        MoveAbsJ [[-54.7922,-70.5062,45,3.90715,-68.4188,36.4322],[-800,-500,1.86265E-6,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound4_1,pSearchSeam4_1,scanJoint4,speedAproach,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound4_2,pSearchSeam4_2,scanJoint4,speedAproach,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[-85.1215,-60,0,79.4456,-20,90],[-800,-500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;

        RefreshDisplacement poseDispSeam4_1,posAOSeam4_1,pSeam4_1,pSeamFound4_1,pSeamFound4_2;
        RefreshDisplacement poseDispSeam4_2,posAOSeam4_2,pSeam4_2,pSeamFound4_1,pSeamFound4_2;
        RefreshDisplacement poseDispSeam4_3,posAOSeam4_3,pSeam4_3,pSeamFound4_1,pSeamFound4_2;

        MoveAbsJ [[-85.1215,-60,0,79.4456,-20,-91.3062],[-800,-500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

        PDispSet poseDispSeam4_1;
        MoveJ GetAproachTarget(pSeam4_1),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam4_1,speedAproach,seamShared,weldShared_2\Weave:=weaveShared_2,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_2\SeamName:="WeldSeam";
        PDispSet poseDispSeam4_2;
        ArcL pSeam4_2,speedWeld,seamShared,weldShared_2\Weave:=weaveShared_2,zoneWeld,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_2;
        PDispSet poseDispSeam4_3;
        ArcLEnd pSeam4_3,speedWeld,seamShared,weldShared_2\Weave:=weaveShared_2,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_2;
        MoveL GetAproachTarget(pSeam4_3),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        PDispOff;

        MoveAbsJ [[-44.8198,-38.9682,10.3138,59.7025,-72.646,121.464],[-799.999,-500,128.324,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

    UNDO
        PDispOff;
    ENDPROC

    LOCAL PROC Seam_5()
        MoveAbsJ [[-90,-45.3776,29.7092,-26.0507,-60,180],[-800,-500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound5_1,pSearchSeam5_1,scanJoint5,speedAproach,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound5_2,pSearchSeam5_2,scanJoint5,speedAproach,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[-90,-45.3776,29.7092,-26.0507,-60,180],[-800,-500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;

        RefreshDisplacement poseDispSeam5_1,posAOSeam5_1,pSeam5_1,pSeamFound5_1,pSeamFound5_2;
        RefreshDisplacement poseDispSeam5_2,posAOSeam5_2,pSeam5_2,pSeamFound5_1,pSeamFound5_2;
        RefreshDisplacement poseDispSeam5_3,posAOSeam5_3,pSeam5_3,pSeamFound5_1,pSeamFound5_2;

        MoveAbsJ [[-74.7099,-20,20,0,-83.9333,180],[-801,-500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

        PDispSet poseDispSeam5_1;
        MoveJ GetAproachTarget(pSeam5_1),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam5_1,speedAproach,seamShared,weldShared_3\Weave:=weaveShared_3,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_3\SeamName:="WeldSeam";
        PDispSet poseDispSeam5_2;
        ArcL pSeam5_2,speedWeld,seamShared,weldShared_3\Weave:=weaveShared_3,zoneWeld,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_3;
        PDispSet poseDispSeam5_3;
        ArcLEnd pSeam5_3,speedWeld,seamShared,weldShared_3\Weave:=weaveShared_3,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_3;
        MoveL GetAproachTarget(pSeam5_2),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        PDispOff;

        MoveAbsJ [[-74.7099,-20,20,0,-83.9333,65.6609],[-801,-500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

    UNDO
        PDispOff;
    ENDPROC

    LOCAL PROC Seam_6()
        MoveAbsJ [[-3.45939,6.75211,11.5052,34.611,-88.991,135.423],[-800,500,-0.00013411,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound6_1,pSearchSeam6_1,scanJoint6,speedAproach,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound6_2,pSearchSeam6_2,scanJoint6,speedAproach,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[-27.0778,-20,20,40.6952,-70,141.057],[-800,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;

        RefreshDisplacement poseDispSeam6_1,posAOSeam6_1,pSeam6_1,pSeamFound6_1,pSeamFound6_2;
        RefreshDisplacement poseDispSeam6_2,posAOSeam6_2,pSeam6_2,pSeamFound6_1,pSeamFound6_2;

        MoveAbsJ [[-27.0778,-20,20,40.6952,-70,141.057],[-800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

        PDispSet poseDispSeam6_1;
        MoveJ GetAproachTarget(pSeam6_1),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam6_1,speedAproach,seamShared,weldShared_3\Weave:=weaveShared_3,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_3\SeamName:="WeldSeam";
        PDispSet poseDispSeam6_2;
        ArcLEnd pSeam6_2,speedWeld,seamShared,weldShared_3\Weave:=weaveShared_3,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_3;
        MoveL GetAproachTarget(pSeam6_2),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        PDispOff;

        MoveAbsJ [[-27.0778,-20,20,40.6952,-70,141.057],[-800,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

    UNDO
        PDispOff;
    ENDPROC

    LOCAL PROC Seam_7()
        MoveAbsJ [[-46.062,-60,29.8365,31.1131,-33.8128,32.5521],[-800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound7_1,pSearchSeam7_1,scanJoint7,speedAproach,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound7_2,pSearchSeam7_2,scanJoint7,speedAproach,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[-46.062,-60,29.8365,31.1131,-33.8128,32.5521],[-800,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;

        RefreshDisplacement poseDispSeam7_1,posAOSeam7_1,pSeam7_1,pSeamFound7_1,pSeamFound7_2;
        RefreshDisplacement poseDispSeam7_2,posAOSeam7_2,pSeam7_2,pSeamFound7_1,pSeamFound7_2;
        RefreshDisplacement poseDispSeam7_3,posAOSeam7_3,pSeam7_3,pSeamFound7_1,pSeamFound7_2;

        MoveAbsJ [[-57.8525,-46.5622,23.0288,10.0453,-41.145,3.82011],[-800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

        PDispSet poseDispSeam7_1;
        MoveJ GetAproachTarget(pSeam7_1),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam7_1,speedAproach,seamShared,weldShared_3\Weave:=weaveShared_3,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_3\SeamName:="WeldSeam";
        PDispSet poseDispSeam7_2;
        ArcL pSeam7_2,speedWeld,seamShared,weldShared_3\Weave:=weaveShared_3,zoneWeld,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_3;
        PDispSet poseDispSeam7_3;
        ArcLEnd pSeam7_3,speedWeld,seamShared,weldShared_3\Weave:=weaveShared_3,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_3;
        MoveL GetAproachTarget(pSeam7_2),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        PDispOff;

        MoveAbsJ [[-57.8525,-46.5622,23.0288,10.0453,-41.145,3.82011],[-800,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

    UNDO
        PDispOff;
    ENDPROC


    LOCAL PROC Seam_8()
        MoveAbsJ [[-90,-75,45,90,-45,180],[-800,-500,-0.00013411,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        MoveAbsJ [[-90,-45.3776,29.7092,-26.0507,-60,-40.1141],[-800,-500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

        RefreshDisplacement poseDispSeam8_1,posAOSeam8_1,pSeam8_1,pSeamFound5_1,pSeamFound5_2;
        RefreshDisplacement poseDispSeam8_2,posAOSeam8_2,pSeam8_2,pSeamFound5_1,pSeamFound5_2;
        RefreshDisplacement poseDispSeam8_3,posAOSeam8_3,pSeam8_3,pSeamFound5_1,pSeamFound5_2;

        PDispSet poseDispSeam8_1;
        MoveJ GetAproachTarget(pSeam8_1),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam8_1,speedAproach,seamShared,weldShared_4\Weave:=weaveShared_4,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_4\SeamName:="WeldSeam";
        PDispSet poseDispSeam8_2;
        ArcL pSeam8_2,speedWeld,seamShared,weldShared_4\Weave:=weaveShared_4,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_4;
        PDispSet poseDispSeam8_3;
        ArcLEnd pSeam8_3,speedWeld,seamShared,weldShared_4\Weave:=weaveShared_4,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_4;
        MoveL GetAproachTarget(pSeam8_2),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        PDispOff;

        MoveAbsJ [[-74.7099,-20,20,0,-83.9333,65.6609],[-801,-500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

    UNDO
        PDispOff;
    ENDPROC

    LOCAL PROC Seam_9()
        MoveAbsJ [[-27.0778,-20,20,40.6952,-70,141.057],[-800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

        RefreshDisplacement poseDispSeam9_1,posAOSeam9_1,pSeam9_1,pSeamFound6_1,pSeamFound6_2;
        RefreshDisplacement poseDispSeam9_2,posAOSeam9_2,pSeam9_2,pSeamFound6_1,pSeamFound6_2;

        PDispSet poseDispSeam9_1;
        MoveJ GetAproachTarget(pSeam9_1),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam9_1,speedAproach,seamShared,weldShared_4\Weave:=weaveShared_4,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_4\SeamName:="WeldSeam";
        PDispSet poseDispSeam9_2;
        ArcLEnd pSeam9_2,speedWeld,seamShared,weldShared_4\Weave:=weaveShared_4,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_4;
        MoveL GetAproachTarget(pSeam9_2),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        PDispOff;

        MoveAbsJ [[-27.0778,-20,20,40.6952,-70,141.057],[-800,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

    UNDO
        PDispOff;
    ENDPROC

    LOCAL PROC Seam_10()
        MoveAbsJ [[-57.8525,-46.5622,23.0288,10.0453,-41.145,3.82011],[-800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

        RefreshDisplacement poseDispSeam10_1,posAOSeam10_1,pSeam10_1,pSeamFound7_1,pSeamFound7_2;
        RefreshDisplacement poseDispSeam10_2,posAOSeam10_2,pSeam10_2,pSeamFound7_1,pSeamFound7_2;
        RefreshDisplacement poseDispSeam10_3,posAOSeam10_3,pSeam10_3,pSeamFound7_1,pSeamFound7_2;

        PDispSet poseDispSeam10_1;
        MoveJ GetAproachTarget(pSeam10_1),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam10_1,speedAproach,seamShared,weldShared_4\Weave:=weaveShared_4,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_4\SeamName:="WeldSeam";
        PDispSet poseDispSeam10_2;
        ArcL pSeam10_2,speedWeld,seamShared,weldShared_4\Weave:=weaveShared_4,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_4;
        PDispSet poseDispSeam10_3;
        ArcLEnd pSeam10_3,speedWeld,seamShared,weldShared_4\Weave:=weaveShared_4,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_4;
        MoveL GetAproachTarget(pSeam10_2),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        PDispOff;

        MoveAbsJ [[-57.8525,-46.5622,23.0288,10.0453,-41.145,3.82011],[-800,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

    UNDO
        PDispOff;
    ENDPROC
ENDMODULE