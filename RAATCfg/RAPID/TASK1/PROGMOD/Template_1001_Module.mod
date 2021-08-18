MODULE Template_1001_Module
    !*****************************************************
    !Module Name:   Template_1001_Module
    !Version:       1.0
    !Description:   All the targets are coordinated in its self coordinate system
    !Date:          2021-8-16
    !Author:        Michael
    !*****************************************************

    LOCAL PERS num numPartCount:=11;

    !For oframe searching            
    LOCAL PERS robtarget pQ1_X1:=[[-75,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ1_X2:=[[-30,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ1_Y1:=[[0,75,0],[0.353553421,0.683012702,-0.61237243,-0.183012661],[0,-1,-1,1],[800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pQ1_Y2:=[[0,200,0],[0.353553421,0.683012702,-0.61237243,-0.183012661],[0,-1,-1,1],[800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pQ1_Z1:=[[0,0,50],[0.232962913,0.732962913,0.303603179,-0.562422224],[1,0,-1,1],[800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pQ1_Z2:=[[0,0,250],[0.562422222,0.303603147,-0.732962926,0.232962921],[1,0,-1,1],[800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pQ1_X1_Found:=[[-75,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ1_X2_Found:=[[-30,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ1_Y1_Found:=[[-7.74,87.54,-10.7],[0.353553,0.683013,-0.612372,-0.183013],[0,-1,-1,1],[800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pQ1_Y2_Found:=[[-10.24,212.5,-7.84],[0.353553,0.683013,-0.612372,-0.183013],[0,-1,-1,1],[800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pQ1_Z1_Found:=[[0,0,50],[0.562422,0.303603,0.732963,-0.232963],[-1,-2,-1,1],[800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ1_Z2_Found:=[[-3.14,-37.29,224.9],[0.562422,0.303603,-0.732963,0.232963],[1,0,-1,1],[800,500,456,9E+09,9E+09,9E+09]];

    LOCAL PERS robtarget pQ2_X1:=[[-75,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ2_X2:=[[-30,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ2_Y1:=[[0,74.99,0],[0.0903086,-0.672569,0.657682,-0.327031],[-1,-1,0,1],[-800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pQ2_Y2:=[[0,200,0],[0.0903092,-0.67257,0.657681,-0.327031],[-1,-1,0,1],[-800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pQ2_Z1:=[[0,0,50],[0.562422,0.303603,0.732963,-0.232963],[-1,-2,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ2_Z2:=[[0,0,250],[0.232963,0.732963,-0.303603,0.562422],[-2,-1,1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ2_X1_Found:=[[-75,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ2_X2_Found:=[[-30,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ2_Y1_Found:=[[17.72,90.01,-0.38],[0.183013,-0.612372,0.683013,-0.353553],[-1,0,-1,1],[-800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pQ2_Y2_Found:=[[15.32,215.36,0.3],[0.183013,-0.612372,0.683013,-0.353553],[-1,0,-1,1],[-800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pQ2_Z1_Found:=[[0,0,50],[0.562422,0.303603,0.732963,-0.232963],[-1,-2,-1,1],[-800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ2_Z2_Found:=[[16.14,7.09,231.86],[0.232963,0.732963,-0.303603,0.562422],[-2,-1,1,1],[-800,500,456,9E+09,9E+09,9E+09]];

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

    LOCAL PERS pose poseFrame:=[[-5.35085,-31.8794,-13.4332],[0.486953,0.50287,0.501527,0.508399]];
    LOCAL PERS pose poseTransform:=[[0,0,0],[0.5,-0.5,-0.5,-0.5]];
    LOCAL PERS pose poseTransform_Q1:=[[0,0,0],[0.5,-0.5,-0.5,-0.5]];
    LOCAL PERS pose poseTransform_Q2:=[[0,0,0],[0.5,-0.5,-0.5,-0.5]];
    LOCAL PERS pose poseTransform_Q3:=[[0,0,0],[0.5,-0.5,-0.5,-0.5]];
    LOCAL PERS pose poseTransform_Q4:=[[0,0,0],[0.5,-0.5,-0.5,-0.5]];

    LOCAL PERS robtarget pSearchSeam1_1:=[[100,0,0],[0.120591,-0.0499502,-0.915976,0.37941],[0,0,0,1],[800,500,480,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSearchSeam1_2:=[[25,0,0],[0.120591,-0.0499502,-0.915976,0.37941],[0,0,0,1],[800,500,480,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSearchSeam2_1:=[[0,0,50],[0.232963,0.732963,0.303603,-0.562422],[1,0,-1,1],[800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSearchSeam2_2:=[[0,0,250],[0.562422,0.303603,-0.732963,0.232963],[1,0,-1,1],[800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSearchSeam3_1:=[[100,-20,0],[0.120591,0.0499502,-0.915976,-0.37941],[0,-1,-1,1],[800,-500,480,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSearchSeam3_2:=[[25,-20,0],[0.120591,0.0499502,-0.915976,-0.37941],[0,-1,-1,1],[800,-500,480,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSearchSeam4_1:=[[0,20,50],[0.232963,-0.732963,0.303603,0.562422],[0,-1,4,1],[800,-500,480,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSearchSeam4_2:=[[0,-20,250],[0.562422,-0.303603,-0.732963,-0.232963],[0,-1,0,1],[800,-500,480,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSearchSeam5_1:=[[161.50,-125.01,-0.01],[0.258695,-0.685431,-0.679861,0.0324105],[1,-1,0,1],[799.999,-500,480.001,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSearchSeam5_2:=[[161.5,-50,-0.01],[0.258696,-0.685431,-0.67986,0.0324082],[1,-1,0,1],[799.999,-500,480.001,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSearchSeam6_1:=[[0,-125,440],[0.270598,0.653282,-0.653282,-0.270598],[0,-1,-1,1],[800,500,180,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSearchSeam6_2:=[[0,125,440],[0.270598,0.653282,-0.653282,-0.270598],[0,-1,-1,1],[800,500,180,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSearchSeam7_1:=[[172.50,125.00,18.00],[0.298606,0.663087,-0.6864,-0.00225087],[0,0,-1,1],[800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSearchSeam7_2:=[[172.5,25,18],[0.298604,0.663086,-0.686402,-0.00225078],[0,0,-1,1],[800,500,456,9E+09,9E+09,9E+09]];

    LOCAL PERS robtarget pSeamFound1_1:=[[114.5,-4.54,-1.93],[0.120591,-0.0499502,-0.915976,0.37941],[0,0,0,1],[800,500,480,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound1_2:=[[39.18,-6.44,-2.18],[0.120591,-0.0499502,-0.915976,0.37941],[0,0,0,1],[800,500,480,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound2_1:=[[3.42,-7.77,64.59],[0.232963,0.732963,0.303603,-0.562422],[1,0,-1,1],[800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound2_2:=[[2.21,-6,233.24],[0.562422,0.303603,-0.732963,0.232963],[1,0,-1,1],[800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound3_1:=[[113.68,-13.56,-4.53],[0.120591,0.0499502,-0.915976,-0.37941],[0,-1,-1,1],[800,-500,480,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound3_2:=[[39.04,-15.51,-4.49],[0.120591,0.0499502,-0.915976,-0.37941],[0,-1,-1,1],[800,-500,480,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound4_1:=[[-3.15,-18.43,64.41],[0.232963,-0.732963,0.303603,0.562422],[0,-1,0,1],[800,-500,480,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound4_2:=[[-1.25,-17.14,233.36],[0.562422,-0.303603,-0.732963,-0.232963],[0,-1,0,1],[800,-500,480,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound5_1:=[[144.2,-138.82,-4.3],[0.353553,-0.683013,-0.612372,0.183013],[1,0,0,1],[800,-500,480,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound5_2:=[[142.24,-63.8,-4.04],[0.353553,-0.683013,-0.612372,0.183013],[1,0,0,1],[800,-500,480,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound6_1:=[[4.47,-109.79,436.82],[0.270598,0.653282,-0.653282,-0.270598],[0,-1,-1,1],[800,500,180,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound6_2:=[[-0.89,140.42,432.85],[0.270598,0.653282,-0.653282,-0.270598],[0,-1,-1,1],[800,500,180,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound7_1:=[[140.36,132.63,2],[0.353553,0.683013,-0.612372,-0.183013],[0,-1,-1,1],[800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound7_2:=[[142.64,32.7,1.74],[0.353553,0.683013,-0.612372,-0.183013],[0,-1,-1,1],[800,500,480,9E+09,9E+09,9E+09]];

    LOCAL PERS robtarget pSeam1_1:=[[132.96,0,0],[0.37941,0.915976,-0.0499504,-0.120589],[0,0,-2,1],[800,500,480,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam1_2:=[[10,0,0],[0.37941,0.915976,-0.0499502,-0.12059],[0,0,-2,1],[800,500,480,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam2_1:=[[0,0,10],[0.562422,0.303603,-0.732963,0.232963],[0,0,-1,1],[800,500,480,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam2_2:=[[0,0,100],[0.732963,0.232963,-0.562422,0.303603],[0,0,-1,1],[800,500,480,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam2_3:=[[0,0,385],[0.732963,0.232963,-0.562422,0.303603],[0,0,-1,1],[800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam3_1:=[[132.961,-20,7],[0.379409,-0.915976,-0.0499502,0.120591],[1,-1,1,1],[800,-500,480,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam3_2:=[[0,-20,7],[0.379409,-0.915976,-0.0499502,0.120591],[1,-1,2,1],[800,-500,480,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam4_1:=[[0,-20,10],[0.562422,-0.303603,-0.732963,-0.232963],[1,-1,0,1],[800,-500,480,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam4_2:=[[0,-20,100],[0.732963,-0.232963,-0.562422,-0.303603],[1,-1,0,1],[800,-500,480,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam4_3:=[[0,-20,380],[0.732963,-0.232963,-0.562422,-0.303603],[1,-1,0,1],[800,-500,480,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam5_1:=[[161.5,-125,0],[0.183013,0.612372,-0.683013,-0.353553],[0,-1,-1,1],[800,-500,480,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam5_2:=[[161.5,-24,0],[0.183013,0.612372,-0.683013,-0.353553],[0,-1,-1,1],[800,-500,480,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam5_3:=[[161.5,-24,0],[0.183013,0.612372,-0.683013,-0.353553],[0,-1,-1,1],[800,-500,480,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam6_1:=[[0,-155.5,440],[0.191341728,-0.800103119,-0.461939792,0.331413594],[0,0,1,1],[800,500,180,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam6_2:=[[0,144.5,440],[0.191341728,-0.800103119,-0.461939792,0.331413594],[0,0,1,1],[800,500,180,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam7_1:=[[172.5,144.5,-6],[0.183013,-0.612372,-0.683013,0.353553],[0,0,0,1],[800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam7_2:=[[172.5,13,-6],[0.183013,-0.612372,-0.683013,0.353553],[0,0,0,1],[800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam7_3:=[[172.5,13,-6],[0.183013,-0.612372,-0.683013,0.353553],[0,0,0,1],[800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam8_1:=[[161.5,-125,0],[0.183013,0.612372,-0.683013,-0.353553],[0,-1,-1,1],[800,-500,480,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam8_2:=[[161.5,-24,0],[0.183013,0.612372,-0.683013,-0.353553],[0,-1,-1,1],[800,-500,480,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam8_3:=[[161.5,-24,0],[0.183013,0.612372,-0.683013,-0.353553],[0,-1,-1,1],[800,-500,480,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pSeam9_1:=[[0,-155.5,440],[0.191341728,-0.800103119,-0.461939792,0.331413594],[0,0,1,1],[800,500,180,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam9_2:=[[0,144.5,440],[0.191341728,-0.800103119,-0.461939792,0.331413594],[0,0,1,1],[800,500,180,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam10_1:=[[172.500000937,144.5,-6],[0.183012682,-0.612372459,-0.683012681,0.353553402],[0,0,0,1],[-800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam10_2:=[[172.500000937,13,-6],[0.183012682,-0.612372459,-0.683012681,0.353553402],[0,0,0,1],[-800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam10_3:=[[172.500000937,13,-6],[0.183012682,-0.612372459,-0.683012681,0.353553402],[0,0,0,1],[-800,500,456,9E+09,9E+09,9E+09]];

    !Only used to compensate Absolute Accuracy Offset
    LOCAL PERS pos posAOSeam1_1:=[0,0,0];
    LOCAL PERS pos posAOSeam1_2:=[0,0,0];
    LOCAL PERS pos posAOSeam2_1:=[0,0,0];
    LOCAL PERS pos posAOSeam2_2:=[0,0,0];
    LOCAL PERS pos posAOSeam2_3:=[0,0,0];
    LOCAL PERS pos posAOSeam3_1:=[0,0,0];
    LOCAL PERS pos posAOSeam3_2:=[0,0,0];
    LOCAL PERS pos posAOSeam4_1:=[0,0,0];
    LOCAL PERS pos posAOSeam4_2:=[0,0,0];
    LOCAL PERS pos posAOSeam4_3:=[0,0,0];
    LOCAL PERS pos posAOSeam5_1:=[0,0,0];
    LOCAL PERS pos posAOSeam5_2:=[0,0,0];
    LOCAL PERS pos posAOSeam5_3:=[0,0,0];
    LOCAL PERS pos posAOSeam6_1:=[20,0,0];
    LOCAL PERS pos posAOSeam6_2:=[20,0,0];
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
    LOCAL PERS pose poseDispSeam1_1:=[[0.108917,-4.07159,-1.86837],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam1_2:=[[0.188454,-7.17133,-2.27623],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam2_1:=[[3.81084,-8.34172,0.114883],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam2_2:=[[3.16523,-7.39732,0.100342],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam2_3:=[[1.12079,-4.40669,0.0542603],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam3_1:=[[-0.187469,6.93883,-11.5402],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam3_2:=[[-0.0967331,3.46754,-11.469],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam4_1:=[[-3.76151,1.15481,0.0334816],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam4_2:=[[-2.74957,1.84187,0.016861],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam4_3:=[[0.398711,3.97939,-0.0348511],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam5_1:=[[-17.6494,-0.446373,-4.25365],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam5_2:=[[-20.2863,-0.516472,-3.90385],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam5_3:=[[-20.2863,-0.516472,-3.90385],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam6_1:=[[25.4475,0.0777283,-2.45596],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam6_2:=[[19.0255,-0.135315,-7.21259],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam7_1:=[[-32.3935,-0.759979,8.02891],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam7_2:=[[-29.3948,-0.690666,7.68695],[1,0,0,0]];
    LOCAL PERS pose poseDispSeam7_3:=[[-29.3948,-0.690666,7.68695],[1,0,0,0]];
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
    PROC Template_1001()
        Logging "Start to run Template_1001...";
        SetGO Go112_WeldCompleted,0;
        SetGO Go80_WeldingStatus,0;

        IF boolEnableGantryOffset THEN
            EOffsSet extGantryOffsetCurrent;
        ENDIF

        MoveToReadyQuadrant 1;
        IF boolEnableSearch THEN
            SearchAndProcess;
        ENDIF

        InhibWeld TRUE\Weld;

        WeldSeam 1;
        WeldSeam 2;
        MoveToReadyQuadrant 1;

        MoveToReadyQuadrant 4;
        WeldSeam 3;
        WeldSeam 4;

        InhibWeld TRUE\Weld\Weave;

        WeldSeam 5;
        MoveToReadyQuadrant 4;

        MoveToReadyQuadrant 1;
        WeldSeam 6;
        WeldSeam 7;
        MoveToReadyQuadrant 1;

        !        MoveToReadyQuadrant 4;
        !        WeldSeam 8;
        !        MoveToReadyQuadrant 4;

        !        MoveToReadyQuadrant 1;
        !        WeldSeam 9;
        !        WeldSeam 10;
        !        MoveToReadyQuadrant 1;

        EOffsOff;
        Incr numPartCount;
        Logging "Template_1001 is done";

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

        MoveAbsJ [[57.2174,-60,14.5962,-12.6144,-30,-58.0924],[800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pQ1_Y1_Found,pQ1_Y1,scanJoint2,speedAproach,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pQ1_Y2_Found,pQ1_Y2,scanJoint2,speedAproach,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[57.2174,-60,14.5962,-12.6144,-30,-58.0924],[800,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;

        !MoveAbsJ [[-89.7306,-43.1368,0,-20,-65.7254,9.9994],[-800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        !ScanSeamByLaser pQ1_X1_Found,pQ1_X1,scanJoint2,speedAproach,toolLaser\WObj:=wobjCurrent;
        !ScanSeamByLaser pQ1_X2_Found,pQ1_X2,scanJoint2,speedAproach,toolLaser\WObj:=wobjCurrent;
        !MoveAbsJ [[-89.7306,-43.1368,0,-20,-65.7254,9.9994],[-800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;

        !MoveAbsJ [[-92.7971,-23.7414,5.96932,0,-45.8213,6.36111E-15],[-800,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        !ScanSeamByLaser pQ1_Z1_Found,pQ1_Z1,scanJoint2,speedAproach,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[57.2174,-60,14.5962,-12.6144,-30,-90],[800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pQ1_Z2_Found,pQ1_Z2,scanJoint2,speedAproach,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[57.2174,-60,14.5962,-12.6144,-30,-90],[800,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;

        !Search YPXN in Wobj0
        poseTransform.rot:=OrientZYX(-90,0,0);
        !Search YPZP in Wobj0
        poseTransform.rot:=OrientZYX(0,-90,-90);

        poseTransform_Q1:=poseTransform;

        poseFrame:=DefFrame(pQ1_Y1_Found,pQ1_Y2_Found,pQ1_Z2_Found\Origin:=3);
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

        MoveAbsJ [[89.8036,-45,30,0,-45,4.69007],[800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound1_1,pSearchSeam1_1,scanJoint1,speedAproach,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound1_2,pSearchSeam1_2,scanJoint1,speedAproach,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[89.8036,-45,30,0,-45,4.69007],[800,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;

        RefreshDisplacement poseDispSeam1_1,posAOSeam1_1,pSeam1_1,pSeamFound1_1,pSeamFound1_2;
        RefreshDisplacement poseDispSeam1_2,posAOSeam1_2,pSeam1_2,pSeamFound1_1,pSeamFound1_2;

        MoveAbsJ [[54.848,-45,10.0862,0,-45,-164.158],[800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

        PDispSet poseDispSeam1_1;
        MoveJ GetAproachTarget(pSeam1_1),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam1_1,speedAproach,seamShared,weldShared_1\Weave:=weaveShared_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_1\SeamName:="WeldSeam";
        PDispSet poseDispSeam1_2;
        ArcLEnd pSeam1_2,speedWeld,seamShared,weldShared_1\Weave:=weaveShared_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_1;
        MoveL GetAproachTarget(pSeam1_2),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        PDispOff;

        MoveAbsJ [[92.1918,-45,10.0862,0.000125473,-44.9998,-164.158],[800,500,0.000264496,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

    UNDO
        PDispOff;
    ENDPROC

    LOCAL PROC Seam_2()
        MoveAbsJ [[113.189,-52.9601,6.76318,69.1689,-38.7873,-139.676],[800,500,1.49012E-05,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound2_1,pSearchSeam2_1,scanJoint2,speedAproach,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound2_2,pSearchSeam2_2,scanJoint2,speedAproach,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[89.8276,-60,20,90,-10,-60],[800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;

        RefreshDisplacement poseDispSeam2_1,posAOSeam2_1,pSeam2_1,pSeamFound2_1,pSeamFound2_2;
        RefreshDisplacement poseDispSeam2_2,posAOSeam2_2,pSeam2_2,pSeamFound2_1,pSeamFound2_2;
        RefreshDisplacement poseDispSeam2_3,posAOSeam2_3,pSeam2_3,pSeamFound2_1,pSeamFound2_2;

        !poseDispSeam2_1.trans.z:=pSeamFound1_1.trans.z-pSeam1_1.trans.z+posAOSeam2_1.z;

        MoveAbsJ [[86.4727,-47.3789,17.2334,76.93,-18.8419,-55.6531],[800,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

        PDispSet poseDispSeam2_1;
        MoveJ GetAproachTarget(pSeam2_1),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam2_1,speedAproach,seamShared,weldShared_2\Weave:=weaveShared_2,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_2\SeamName:="WeldSeam";
        PDispSet poseDispSeam2_2;
        ArcL pSeam2_2,speedWeld,seamShared,weldShared_2\Weave:=weaveShared_2,zoneWeld,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_2;
        PDispSet poseDispSeam2_3;
        ArcLEnd pSeam2_3,speedWeld,seamShared,weldShared_2\Weave:=weaveShared_2,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_2;
        MoveL GetAproachTarget(pSeam2_3),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        PDispOff;

        MoveAbsJ [[98.254,-33.2348,-4.93085,65.8677,-27.9526,-59.3318],[800,500,1.49012E-05,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

    UNDO
        PDispOff;
    ENDPROC

    LOCAL PROC Seam_3()
        MoveAbsJ [[87.6697,-60,30,0,-20,0.596836],[800,-500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound3_1,pSearchSeam3_1,scanJoint3,speedAproach,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound3_2,pSearchSeam3_2,scanJoint3,speedAproach,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[87.6697,-60,30,0,-20,0.596836],[800,-500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;

        RefreshDisplacement poseDispSeam3_1,posAOSeam3_1,pSeam3_1,pSeamFound3_1,pSeamFound3_2;
        RefreshDisplacement poseDispSeam3_2,posAOSeam3_2,pSeam3_2,pSeamFound3_1,pSeamFound3_2;

        MoveAbsJ [[120.05,-45,9.19948,0,-30,188.432],[800,-500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

        PDispSet poseDispSeam3_1;
        MoveJ GetAproachTarget(pSeam3_1),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam3_1,speedAproach,seamShared,weldShared_1\Weave:=weaveShared_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_1\SeamName:="WeldSeam";
        PDispSet poseDispSeam3_2;
        ArcLEnd pSeam3_2,speedWeld,seamShared,weldShared_1\Weave:=weaveShared_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_1;
        MoveL GetAproachTarget(pSeam3_2),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        PDispOff;

        MoveAbsJ [[120.05,-45,9.19948,0,-30,188.432],[800,-500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

    UNDO
        PDispOff;
    ENDPROC

    LOCAL PROC Seam_4()
        MoveAbsJ [[50.041,-47.6996,14.9196,-22.4149,-57.6893,230.583],[800,-500,1.49012E-05,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound4_1,pSearchSeam4_1,scanJoint4,speedAproach,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound4_2,pSearchSeam4_2,scanJoint4,speedAproach,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[83.2358,-60,30,-45,-49.5969,100.638],[800,-500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;

        RefreshDisplacement poseDispSeam4_1,posAOSeam4_1,pSeam4_1,pSeamFound4_1,pSeamFound4_2;
        RefreshDisplacement poseDispSeam4_2,posAOSeam4_2,pSeam4_2,pSeamFound4_1,pSeamFound4_2;
        RefreshDisplacement poseDispSeam4_3,posAOSeam4_3,pSeam4_3,pSeamFound4_1,pSeamFound4_2;

        MoveAbsJ [[94.2338,-34.6748,21.4062,-37.1393,-50.5632,71.7215],[800,-500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

        PDispSet poseDispSeam4_1;
        MoveJ GetAproachTarget(pSeam4_1),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam4_1,speedAproach,seamShared,weldShared_2\Weave:=weaveShared_2,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_2\SeamName:="WeldSeam";
        PDispSet poseDispSeam4_2;
        ArcL pSeam4_2,speedWeld,seamShared,weldShared_2\Weave:=weaveShared_2,zoneWeld,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_2;
        PDispSet poseDispSeam4_3;
        ArcLEnd pSeam4_3,speedWeld,seamShared,weldShared_2\Weave:=weaveShared_2,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_2;
        MoveL GetAproachTarget(pSeam4_3),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        PDispOff;

        MoveAbsJ [[80.0186,-23.9942,-8.48631,-51.9854,-46.7499,102.517],[800,-500,1.49012E-05,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

    UNDO
        PDispOff;
    ENDPROC

    LOCAL PROC Seam_5()
        MoveAbsJ [[147.387,-45,25.1431,35.3544,-48.8681,23.5475],[800,-500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound5_1,pSearchSeam5_1,scanJoint7,speedAproach,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound5_2,pSearchSeam5_2,scanJoint7,speedAproach,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[147.387,-45,25.1431,35.3544,-48.8681,23.5475],[800,-500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;

        RefreshDisplacement poseDispSeam5_1,posAOSeam5_1,pSeam5_1,pSeamFound5_1,pSeamFound5_2;
        RefreshDisplacement poseDispSeam5_2,posAOSeam5_2,pSeam5_2,pSeamFound5_1,pSeamFound5_2;
        RefreshDisplacement poseDispSeam5_3,posAOSeam5_3,pSeam5_3,pSeamFound5_1,pSeamFound5_2;

        MoveAbsJ [[83.0432,-45,6.34264,-62.7013,-10,-31.3365],[800,-500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

        PDispSet poseDispSeam5_1;
        MoveJ GetAproachTarget(pSeam5_1),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam5_1,speedAproach,seamShared,weldShared_3\Weave:=weaveShared_3,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_3\SeamName:="WeldSeam";
        PDispSet poseDispSeam5_2;
        ArcLEnd pSeam5_2,speedWeld,seamShared,weldShared_3\Weave:=weaveShared_3,zoneWeld,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_3;
        PDispSet poseDispSeam5_3;
        ArcLEnd pSeam5_3,speedWeld,seamShared,weldShared_3\Weave:=weaveShared_3,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_3;
        MoveL GetAproachTarget(pSeam5_2),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        PDispOff;

        MoveAbsJ [[83.0432,-45,6.34264,-62.7013,-10,-31.3365],[800,-500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

    UNDO
        PDispOff;
    ENDPROC

    LOCAL PROC Seam_6()
        MoveAbsJ [[24.5362,-41.2639,37.2884,-34.6927,-53.4776,-36.2992],[800,500,-0.000491738,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound6_1,pSearchSeam6_1,scanJoint6,speedAproach,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound6_2,pSearchSeam6_2,scanJoint6,speedAproach,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[24.5361,-38.8889,24.2518,-40.3056,-45,-27.7349],[800,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;

        RefreshDisplacement poseDispSeam6_1,posAOSeam6_1,pSeam6_1,pSeamFound6_1,pSeamFound6_2;
        RefreshDisplacement poseDispSeam6_2,posAOSeam6_2,pSeam6_2,pSeamFound6_1,pSeamFound6_2;

        MoveAbsJ [[32.8503,-60,30,-42.9867,-10,187.199],[800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

        PDispSet poseDispSeam6_1;
        MoveJ GetAproachTarget(pSeam6_1),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam6_1,speedAproach,seamShared,weldShared_3\Weave:=weaveShared_3,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_3\SeamName:="WeldSeam";
        PDispSet poseDispSeam6_2;
        ArcLEnd pSeam6_2,speedWeld,seamShared,weldShared_3\Weave:=weaveShared_3,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_3;
        MoveL GetAproachTarget(pSeam6_2),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        PDispOff;

        MoveAbsJ [[50.8929,-64.4067,41.58,-35.65,-26.8366,187.643],[800,500,105.568,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

    UNDO
        PDispOff;
    ENDPROC

    LOCAL PROC Seam_7()
        MoveAbsJ [[45.9334,-60,33.8211,-29.2108,-36.3224,-34.8371],[800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound7_1,pSearchSeam7_1,scanJoint5,speedAproach,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound7_2,pSearchSeam7_2,scanJoint5,speedAproach,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[45.9334,-60,33.8211,-29.2108,-36.3224,-34.8371],[800,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;

        RefreshDisplacement poseDispSeam7_1,posAOSeam7_1,pSeam7_1,pSeamFound7_1,pSeamFound7_2;
        RefreshDisplacement poseDispSeam7_2,posAOSeam7_2,pSeam7_2,pSeamFound7_1,pSeamFound7_2;
        RefreshDisplacement poseDispSeam7_3,posAOSeam7_3,pSeam7_3,pSeamFound7_1,pSeamFound7_2;

        MoveAbsJ [[122.431,-24.6315,6.90802,58.7987,-60,21.8787],[800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

        PDispSet poseDispSeam7_1;
        MoveJ GetAproachTarget(pSeam7_1),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam7_1,speedAproach,seamShared,weldShared_3\Weave:=weaveShared_3,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_3\SeamName:="WeldSeam";
        PDispSet poseDispSeam7_2;
        ArcLEnd pSeam7_2,speedWeld,seamShared,weldShared_3\Weave:=weaveShared_3,zoneWeld,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_3;
        PDispSet poseDispSeam7_3;
        ArcLEnd pSeam7_3,speedWeld,seamShared,weldShared_3\Weave:=weaveShared_3,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_3;
        MoveL GetAproachTarget(pSeam7_2),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        PDispOff;

        MoveAbsJ [[131.088,-24.7086,-16.2892,70.0898,-53.0852,-4.74759],[800,500,-0.000238419,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

    UNDO
        PDispOff;
    ENDPROC


    LOCAL PROC Seam_8()
        MoveAbsJ [[-90,-45.3776,29.7092,-26.0507,-60,-40.1141],[-800,-500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

        RefreshDisplacement poseDispSeam8_1,posAOSeam8_1,pSeam8_1,pSeamFound5_1,pSeamFound5_2;
        RefreshDisplacement poseDispSeam8_2,posAOSeam8_2,pSeam8_2,pSeamFound5_1,pSeamFound5_2;
        RefreshDisplacement poseDispSeam8_3,posAOSeam8_3,pSeam8_3,pSeamFound5_1,pSeamFound5_2;

        PDispSet poseDispSeam8_1;
        MoveJ GetAproachTarget(pSeam8_1),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam8_1,speedAproach,seamShared,weldShared_4\Weave:=weaveShared_4,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_4\SeamName:="WeldSeam";
        PDispSet poseDispSeam8_2;
        ArcL pSeam8_2,speedWeld,seamShared,weldShared_4\Weave:=weaveShared_4,zoneWeld,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_4;
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
        ArcL pSeam10_2,speedWeld,seamShared,weldShared_4\Weave:=weaveShared_4,zoneWeld,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_4;
        PDispSet poseDispSeam10_3;
        ArcLEnd pSeam10_3,speedWeld,seamShared,weldShared_4\Weave:=weaveShared_4,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_4;
        MoveL GetAproachTarget(pSeam10_2),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        PDispOff;

        MoveAbsJ [[-57.8525,-46.5622,23.0288,10.0453,-41.145,3.82011],[-800,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

    UNDO
        PDispOff;
    ENDPROC
ENDMODULE