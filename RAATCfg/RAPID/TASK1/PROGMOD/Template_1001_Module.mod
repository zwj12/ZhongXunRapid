MODULE Template_1001_Module
    !*****************************************************
    !Module Name:   Template_1001_Module
    !Version:       1.0
    !Description:   All the targets are coordinated in its self coordinate system
    !Date:          2021-8-16
    !Author:        Michael
    !*****************************************************

    !2021-8-20, Michael, Add wobjLast, WriteSysDataLog

    LOCAL PERS num numPartCount:=11;

    !For oframe searching            
    LOCAL PERS robtarget pQ1_X1:=[[-75,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ1_X2:=[[-30,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ1_Y1:=[[0,75,0],[0.353553421,0.683012702,-0.61237243,-0.183012661],[0,-1,-1,1],[800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pQ1_Y2:=[[0,200,0],[0.353553421,0.683012702,-0.61237243,-0.183012661],[0,-1,-1,1],[800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pQ1_Z1:=[[0,0,50],[0.232962913,0.732962913,0.303603179,-0.562422224],[1,0,-1,1],[800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pQ1_Z2:=[[0,0,250],[0.562422,0.303603,-0.732963,0.232963],[1,0,-1,1],[800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pQ1_X1_Found:=[[-75,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ1_X2_Found:=[[-30,0,0],[0.37941,0.915976,0.0499502,0.12059],[-1,-1,0,1],[800,500,456,9E+9,9E+9,9E+9]];
    LOCAL PERS robtarget pQ1_Y1_Found:=[[-27.69,83.91,-10.71],[0.353553,0.683013,-0.612372,-0.183013],[0,-1,-1,1],[800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pQ1_Y2_Found:=[[-30.04,208.55,-10.18],[0.353553,0.683013,-0.612372,-0.183013],[0,-1,-1,1],[800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pQ1_Z1_Found:=[[-22.5,-29.63,56.82],[0.562422,0.303603,0.732963,-0.232963],[-1,-2,-1,1],[800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pQ1_Z2_Found:=[[-24.81,-27.62,222.88],[0.562422,0.303603,-0.732963,0.232963],[1,0,-1,1],[800,500,456,9E+09,9E+09,9E+09]];

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

    LOCAL PERS wobjdata wobjLast:=[FALSE,TRUE,"",[[-2163,-36,67],[1,0,0,0]],[[-25.6057,-26.6397,-11.1801],[1,0,0,0]]];
    LOCAL PERS pose poseFrame:=[[-25.6057,-26.6397,-11.1801],[0.493366,0.497156,0.504476,0.504906]];
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

    LOCAL PERS robtarget pSeamFound1_1:=[[114.89,0.99,-4.26],[0.120591,-0.0499502,-0.915976,0.37941],[0,0,0,1],[800,500,480,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound1_2:=[[39.62,-0.77,-4.33],[0.120591,-0.0499502,-0.915976,0.37941],[0,0,0,1],[800,500,480,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound2_1:=[[2.49,-2.59,65.42],[0.232963,0.732963,0.303603,-0.562422],[1,0,-1,1],[800,500,456,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeamFound2_2:=[[0.82,-0.9,234.16],[0.562422,0.303603,-0.732963,0.232963],[1,0,-1,1],[800,500,456,9E+09,9E+09,9E+09]];
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

    LOCAL PERS robtarget pSeam21_1:=[[156,0,0],[0.375673,0.916651,-0.133646,0.0275736],[0,0,-2,1],[567.974,449.71,440.405,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam21_2:=[[156,0,0],[0.375674,0.916651,-0.133644,0.0275745],[0,0,-2,1],[567.974,449.71,440.405,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam21_3:=[[156,0,0],[0.375672,0.916652,-0.133642,0.0275736],[0,0,-2,1],[567.974,449.71,440.405,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam21_4:=[[0,0,0],[0.411828,0.878648,-0.240982,0.0173946],[0,0,-2,1],[567.974,449.71,440.405,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam21_5:=[[0.02,0.00,-0.02],[0.57781,0.500999,-0.60576,0.219522],[0,0,-2,1],[567.975,449.039,440.69,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam21_6:=[[0,0,0],[0.549605,0.275701,-0.700945,0.361385],[0,0,-2,1],[567.974,449.71,440.405,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam21_7:=[[0,0,100],[0.597745,0.115458,-0.635132,0.47537],[1,1,-2,1],[567.974,449.041,440.688,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam21_8:=[[10,5,380],[0.610985,0.11281,-0.614171,0.486585],[1,0,-1,1],[567.974,449.71,440.405,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam24_1:=[[-150,-4.77,0],[0.147388,0.013946,0.943852,-0.29534],[-1,0,0,1],[-698.527,504.221,467.895,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam24_2:=[[-150,1.58,0],[0.147395,0.0139495,0.94385,-0.295344],[-1,0,0,1],[-698.531,504.222,467.895,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam24_3:=[[-142.77,2.55,0],[0.147393,0.0139474,0.94385,-0.295343],[-1,0,0,1],[-698.53,504.221,467.894,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam24_4:=[[-22.40,4.37,0],[0.261771,-0.0223631,0.919965,-0.29093],[-1,1,0,1],[-698.53,504.221,467.894,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam24_5:=[[-15.56,5.63,10],[0.110216,-0.383059,0.740522,-0.54106],[-1,1,-1,1],[-698.53,504.222,467.896,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam24_6:=[[-9.32,3.83,20],[0.337928,0.738102,-0.198901,0.549043],[-1,-1,0,1],[-698.53,504.222,467.894,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam24_7:=[[-12.94,3.92,100],[0.360942,0.648816,-0.14361,0.65432],[-1,-2,1,1],[-698.53,504.222,467.894,9E+09,9E+09,9E+09]];
    LOCAL PERS robtarget pSeam24_8:=[[-12.94,3.92,370],[0.360945,0.648815,-0.143606,0.654321],[-1,-1,0,1],[-698.53,504.222,467.894,9E+09,9E+09,9E+09]];

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

    LOCAL PERS pos posAOSeam21_1:=[0,-5,10];
    LOCAL PERS pos posAOSeam21_2:=[0,6,10];
    LOCAL PERS pos posAOSeam21_3:=[-2,4,10];
    LOCAL PERS pos posAOSeam21_4:=[25,2,10];
    LOCAL PERS pos posAOSeam21_5:=[13,-1,10];
    LOCAL PERS pos posAOSeam21_6:=[7,0,17];
    LOCAL PERS pos posAOSeam21_7:=[11,0,0];
    LOCAL PERS pos posAOSeam21_8:=[11,0,0];
    LOCAL PERS pos posAOSeam24_1:=[-4,0,0];
    LOCAL PERS pos posAOSeam24_2:=[-4,4,0];
    LOCAL PERS pos posAOSeam24_3:=[0,4,0];
    LOCAL PERS pos posAOSeam24_4:=[-10,4,0];
    LOCAL PERS pos posAOSeam24_5:=[-5,4,0];
    LOCAL PERS pos posAOSeam24_6:=[0,4,20];
    LOCAL PERS pos posAOSeam24_7:=[0,0,0];
    LOCAL PERS pos posAOSeam24_8:=[0,0,0];

    !Used for PDispSet
    LOCAL PERS pose peSeam1_1:=[[0.108917,-4.07159,-1.86837],[1,0,0,0]];
    LOCAL PERS pose peSeam1_2:=[[0.188454,-7.17133,-2.27623],[1,0,0,0]];
    LOCAL PERS pose peSeam2_1:=[[3.81084,-8.34172,0.114883],[1,0,0,0]];
    LOCAL PERS pose peSeam2_2:=[[3.16523,-7.39732,0.100342],[1,0,0,0]];
    LOCAL PERS pose peSeam2_3:=[[1.12079,-4.40669,0.0542603],[1,0,0,0]];
    LOCAL PERS pose peSeam3_1:=[[-0.187469,6.93883,-11.5402],[1,0,0,0]];
    LOCAL PERS pose peSeam3_2:=[[-0.0967331,3.46754,-11.469],[1,0,0,0]];
    LOCAL PERS pose peSeam4_1:=[[-3.76151,1.15481,0.0334816],[1,0,0,0]];
    LOCAL PERS pose peSeam4_2:=[[-2.74957,1.84187,0.016861],[1,0,0,0]];
    LOCAL PERS pose peSeam4_3:=[[0.398711,3.97939,-0.0348511],[1,0,0,0]];
    LOCAL PERS pose peSeam5_1:=[[-17.6494,-0.446373,-4.25365],[1,0,0,0]];
    LOCAL PERS pose peSeam5_2:=[[-20.2863,-0.516472,-3.90385],[1,0,0,0]];
    LOCAL PERS pose peSeam5_3:=[[-20.2863,-0.516472,-3.90385],[1,0,0,0]];
    LOCAL PERS pose peSeam6_1:=[[25.4475,0.0777283,-2.45596],[1,0,0,0]];
    LOCAL PERS pose peSeam6_2:=[[19.0255,-0.135315,-7.21259],[1,0,0,0]];
    LOCAL PERS pose peSeam7_1:=[[-32.3935,-0.759979,8.02891],[1,0,0,0]];
    LOCAL PERS pose peSeam7_2:=[[-29.3948,-0.690666,7.68695],[1,0,0,0]];
    LOCAL PERS pose peSeam7_3:=[[-29.3948,-0.690666,7.68695],[1,0,0,0]];
    LOCAL PERS pose peSeam8_1:=[[2.8342,0.0904541,-4.80138],[1,0,0,0]];
    LOCAL PERS pose peSeam8_2:=[[-0.692978,0.00148392,-4.16271],[1,0,0,0]];
    LOCAL PERS pose peSeam8_3:=[[-0.692978,0.00148392,-4.16271],[1,0,0,0]];
    LOCAL PERS pose peSeam9_1:=[[-22.565,0.286362,30.3056],[1,0,0,0]];
    LOCAL PERS pose peSeam9_2:=[[-28.5206,0.127365,27.0722],[1,0,0,0]];
    LOCAL PERS pose peSeam10_1:=[[1.15506,0.0231094,-0.816231],[1,0,0,0]];
    LOCAL PERS pose peSeam10_2:=[[-0.668945,-0.010788,-0.566907],[1,0,0,0]];
    LOCAL PERS pose peSeam10_3:=[[-0.668945,-0.010788,-0.566907],[1,0,0,0]];

    LOCAL PERS pose peSeam21_1:=[[-0.041687,-3.04972,5.77819],[1,0,0,0]];
    LOCAL PERS pose peSeam21_2:=[[-0.041687,7.95028,5.77819],[1,0,0,0]];
    LOCAL PERS pose peSeam21_3:=[[-2.04169,5.95028,5.77819],[1,0,0,0]];
    LOCAL PERS pose peSeam21_4:=[[28.1368,0.304608,5.63319],[1,0,0,0]];
    LOCAL PERS pose peSeam21_5:=[[16.117,-2.69493,5.65321],[1,0,0,0]];
    LOCAL PERS pose peSeam21_6:=[[10.1368,-1.69539,12.6332],[1,0,0,0]];
    LOCAL PERS pose peSeam21_7:=[[13.1473,-2.24323,0.0437164],[1,0,0,0]];
    LOCAL PERS pose peSeam21_8:=[[0.377239,-4.43996,-0.0606689],[1,0,0,0]];
    LOCAL PERS pose peSeam24_1:=[[-3.9471,-1.73105,0.166434],[1,0,0,0]];
    LOCAL PERS pose peSeam24_2:=[[-3.74954,-4.0749,0.167627],[1,0,0,0]];
    LOCAL PERS pose peSeam24_3:=[[0.273361,-4.81904,0.211436],[1,0,0,0]];
    LOCAL PERS pose peSeam24_4:=[[13.4774,-2.89261,0.938115],[1,0,0,0]];
    LOCAL PERS pose peSeam24_5:=[[11.4385,-3.93672,-9.02001],[1,0,0,0]];
    LOCAL PERS pose peSeam24_6:=[[9.999,-1.94246,1.01767],[1,0,0,0]];
    LOCAL PERS pose peSeam24_7:=[[12.0028,-3.1555,0.225418],[1,0,0,0]];
    LOCAL PERS pose peSeam24_8:=[[6.55326,-4.60554,0.107544],[1,0,0,0]];

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
            LoadGantryOffset;
        ENDIF

        MoveToReadyQuadrant 1;
        IF boolEnableSearch THEN
            SearchAndProcess;
        ENDIF

        InhibWeld TRUE\Weld;

        !WeldSeam 1;
        !WeldSeam 2;
        WeldSeam 21;
        MoveToReadyQuadrant 1;

        MoveToReadyQuadrant 4;
        !WeldSeam 3;
        !WeldSeam 4;
        WeldSeam 24;

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

        wobjLast:=wobjCurrent;
        WriteSysDataLog "Template_1001";

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

        RefreshDisp\X\Y\Z,peSeam1_1,posAOSeam1_1,pSeam1_1,pSeamFound1_1,pSeamFound1_2;
        RefreshDisp\X\Y\Z,peSeam1_2,posAOSeam1_2,pSeam1_2,pSeamFound1_1,pSeamFound1_2;

        MoveAbsJ [[54.848,-45,10.0862,0,-45,-164.158],[800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

        PDispSet peSeam1_1;
        MoveJ GetAproachTarget(pSeam1_1),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam1_1,speedAproach,seamShared,weldShared_1\Weave:=weaveShared_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_1\SeamName:="WeldSeam";
        PDispSet peSeam1_2;
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

        RefreshDisp\X\Y\Z,peSeam2_1,posAOSeam2_1,pSeam2_1,pSeamFound2_1,pSeamFound2_2;
        RefreshDisp\X\Y\Z,peSeam2_2,posAOSeam2_2,pSeam2_2,pSeamFound2_1,pSeamFound2_2;
        RefreshDisp\X\Y\Z,peSeam2_3,posAOSeam2_3,pSeam2_3,pSeamFound2_1,pSeamFound2_2;

        !peSeam2_1.trans.z:=pSeamFound1_1.trans.z-pSeam1_1.trans.z+posAOSeam2_1.z;

        MoveAbsJ [[86.4727,-47.3789,17.2334,76.93,-18.8419,-55.6531],[800,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

        PDispSet peSeam2_1;
        MoveJ GetAproachTarget(pSeam2_1),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam2_1,speedAproach,seamShared,weldShared_2\Weave:=weaveShared_2,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_2\SeamName:="WeldSeam";
        PDispSet peSeam2_2;
        ArcL pSeam2_2,speedWeld,seamShared,weldShared_2\Weave:=weaveShared_2,zoneWeld,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_2;
        PDispSet peSeam2_3;
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

        RefreshDisp\X\Y\Z,peSeam3_1,posAOSeam3_1,pSeam3_1,pSeamFound3_1,pSeamFound3_2;
        RefreshDisp\X\Y\Z,peSeam3_2,posAOSeam3_2,pSeam3_2,pSeamFound3_1,pSeamFound3_2;

        MoveAbsJ [[120.05,-45,9.19948,0,-30,188.432],[800,-500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

        PDispSet peSeam3_1;
        MoveJ GetAproachTarget(pSeam3_1),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam3_1,speedAproach,seamShared,weldShared_1\Weave:=weaveShared_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_1\SeamName:="WeldSeam";
        PDispSet peSeam3_2;
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

        RefreshDisp\X\Y\Z,peSeam4_1,posAOSeam4_1,pSeam4_1,pSeamFound4_1,pSeamFound4_2;
        RefreshDisp\X\Y\Z,peSeam4_2,posAOSeam4_2,pSeam4_2,pSeamFound4_1,pSeamFound4_2;
        RefreshDisp\X\Y\Z,peSeam4_3,posAOSeam4_3,pSeam4_3,pSeamFound4_1,pSeamFound4_2;

        MoveAbsJ [[94.2338,-34.6748,21.4062,-37.1393,-50.5632,71.7215],[800,-500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

        PDispSet peSeam4_1;
        MoveJ GetAproachTarget(pSeam4_1),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam4_1,speedAproach,seamShared,weldShared_2\Weave:=weaveShared_2,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_2\SeamName:="WeldSeam";
        PDispSet peSeam4_2;
        ArcL pSeam4_2,speedWeld,seamShared,weldShared_2\Weave:=weaveShared_2,zoneWeld,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_2;
        PDispSet peSeam4_3;
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

        RefreshDisp\X\Y\Z,peSeam5_1,posAOSeam5_1,pSeam5_1,pSeamFound5_1,pSeamFound5_2;
        RefreshDisp\X\Y\Z,peSeam5_2,posAOSeam5_2,pSeam5_2,pSeamFound5_1,pSeamFound5_2;
        RefreshDisp\X\Y\Z,peSeam5_3,posAOSeam5_3,pSeam5_3,pSeamFound5_1,pSeamFound5_2;

        MoveAbsJ [[83.0432,-45,6.34264,-62.7013,-10,-31.3365],[800,-500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

        PDispSet peSeam5_1;
        MoveJ GetAproachTarget(pSeam5_1),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam5_1,speedAproach,seamShared,weldShared_3\Weave:=weaveShared_3,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_3\SeamName:="WeldSeam";
        PDispSet peSeam5_2;
        ArcLEnd pSeam5_2,speedWeld,seamShared,weldShared_3\Weave:=weaveShared_3,zoneWeld,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_3;
        PDispSet peSeam5_3;
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

        RefreshDisp\X\Y\Z,peSeam6_1,posAOSeam6_1,pSeam6_1,pSeamFound6_1,pSeamFound6_2;
        RefreshDisp\X\Y\Z,peSeam6_2,posAOSeam6_2,pSeam6_2,pSeamFound6_1,pSeamFound6_2;

        MoveAbsJ [[32.8503,-60,30,-42.9867,-10,187.199],[800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

        PDispSet peSeam6_1;
        MoveJ GetAproachTarget(pSeam6_1),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam6_1,speedAproach,seamShared,weldShared_3\Weave:=weaveShared_3,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_3\SeamName:="WeldSeam";
        PDispSet peSeam6_2;
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

        RefreshDisp\X\Y\Z,peSeam7_1,posAOSeam7_1,pSeam7_1,pSeamFound7_1,pSeamFound7_2;
        RefreshDisp\X\Y\Z,peSeam7_2,posAOSeam7_2,pSeam7_2,pSeamFound7_1,pSeamFound7_2;
        RefreshDisp\X\Y\Z,peSeam7_3,posAOSeam7_3,pSeam7_3,pSeamFound7_1,pSeamFound7_2;

        MoveAbsJ [[122.431,-24.6315,6.90802,58.7987,-60,21.8787],[800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

        PDispSet peSeam7_1;
        MoveJ GetAproachTarget(pSeam7_1),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam7_1,speedAproach,seamShared,weldShared_3\Weave:=weaveShared_3,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_3\SeamName:="WeldSeam";
        PDispSet peSeam7_2;
        ArcLEnd pSeam7_2,speedWeld,seamShared,weldShared_3\Weave:=weaveShared_3,zoneWeld,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_3;
        PDispSet peSeam7_3;
        ArcLEnd pSeam7_3,speedWeld,seamShared,weldShared_3\Weave:=weaveShared_3,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_3;
        MoveL GetAproachTarget(pSeam7_2),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        PDispOff;

        MoveAbsJ [[131.088,-24.7086,-16.2892,70.0898,-53.0852,-4.74759],[800,500,-0.000238419,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

    UNDO
        PDispOff;
    ENDPROC


    LOCAL PROC Seam_8()
        MoveAbsJ [[-90,-45.3776,29.7092,-26.0507,-60,-40.1141],[-800,-500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

        RefreshDisp\X\Y\Z,peSeam8_1,posAOSeam8_1,pSeam8_1,pSeamFound5_1,pSeamFound5_2;
        RefreshDisp\X\Y\Z,peSeam8_2,posAOSeam8_2,pSeam8_2,pSeamFound5_1,pSeamFound5_2;
        RefreshDisp\X\Y\Z,peSeam8_3,posAOSeam8_3,pSeam8_3,pSeamFound5_1,pSeamFound5_2;

        PDispSet peSeam8_1;
        MoveJ GetAproachTarget(pSeam8_1),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam8_1,speedAproach,seamShared,weldShared_4\Weave:=weaveShared_4,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_4\SeamName:="WeldSeam";
        PDispSet peSeam8_2;
        ArcL pSeam8_2,speedWeld,seamShared,weldShared_4\Weave:=weaveShared_4,zoneWeld,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_4;
        PDispSet peSeam8_3;
        ArcLEnd pSeam8_3,speedWeld,seamShared,weldShared_4\Weave:=weaveShared_4,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_4;
        MoveL GetAproachTarget(pSeam8_2),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        PDispOff;

        MoveAbsJ [[-74.7099,-20,20,0,-83.9333,65.6609],[-801,-500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

    UNDO
        PDispOff;
    ENDPROC

    LOCAL PROC Seam_9()
        MoveAbsJ [[-27.0778,-20,20,40.6952,-70,141.057],[-800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

        RefreshDisp\X\Y\Z,peSeam9_1,posAOSeam9_1,pSeam9_1,pSeamFound6_1,pSeamFound6_2;
        RefreshDisp\X\Y\Z,peSeam9_2,posAOSeam9_2,pSeam9_2,pSeamFound6_1,pSeamFound6_2;

        PDispSet peSeam9_1;
        MoveJ GetAproachTarget(pSeam9_1),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam9_1,speedAproach,seamShared,weldShared_4\Weave:=weaveShared_4,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_4\SeamName:="WeldSeam";
        PDispSet peSeam9_2;
        ArcLEnd pSeam9_2,speedWeld,seamShared,weldShared_4\Weave:=weaveShared_4,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_4;
        MoveL GetAproachTarget(pSeam9_2),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        PDispOff;

        MoveAbsJ [[-27.0778,-20,20,40.6952,-70,141.057],[-800,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

    UNDO
        PDispOff;
    ENDPROC

    LOCAL PROC Seam_10()
        MoveAbsJ [[-57.8525,-46.5622,23.0288,10.0453,-41.145,3.82011],[-800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

        RefreshDisp\X\Y\Z,peSeam10_1,posAOSeam10_1,pSeam10_1,pSeamFound7_1,pSeamFound7_2;
        RefreshDisp\X\Y\Z,peSeam10_2,posAOSeam10_2,pSeam10_2,pSeamFound7_1,pSeamFound7_2;
        RefreshDisp\X\Y\Z,peSeam10_3,posAOSeam10_3,pSeam10_3,pSeamFound7_1,pSeamFound7_2;

        PDispSet peSeam10_1;
        MoveJ GetAproachTarget(pSeam10_1),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam10_1,speedAproach,seamShared,weldShared_4\Weave:=weaveShared_4,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_4\SeamName:="WeldSeam";
        PDispSet peSeam10_2;
        ArcL pSeam10_2,speedWeld,seamShared,weldShared_4\Weave:=weaveShared_4,zoneWeld,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_4;
        PDispSet peSeam10_3;
        ArcLEnd pSeam10_3,speedWeld,seamShared,weldShared_4\Weave:=weaveShared_4,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_4;
        MoveL GetAproachTarget(pSeam10_2),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        PDispOff;

        MoveAbsJ [[-57.8525,-46.5622,23.0288,10.0453,-41.145,3.82011],[-800,500,0,9E+9,9E+9,9E+9]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

    UNDO
        PDispOff;
    ENDPROC

    LOCAL PROC Seam_21()
        Stop;
        LoadGantryOffset;
        MoveAbsJ [[105.094,-39.4504,18.876,66.3755,-48.4178,-99.4821],[800,500,2.4149,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound1_1,pSearchSeam1_1,scanJoint1,speedAproach,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound1_2,pSearchSeam1_2,scanJoint1,speedAproach,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[121.312,-20.8694,22.2274,45.2696,-84.1783,94.4141],[800,500.001,480,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound2_1,pSearchSeam2_1,scanJoint2,speedAproach,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound2_2,pSearchSeam2_2,scanJoint2,speedAproach,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[87.5788,-17.9884,-3.36047,91.5666,-40.8279,-105.447],[800,500,456,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;

        MoveAbsJ [[85.9621,-35.2551,10.8295,97.6802,-38.2092,-182.774],[800.001,500,456,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

        RefreshDisp\X\Y\Z,peSeam21_1,posAOSeam21_1,pSeam21_1,pSeamFound1_1,pSeamFound1_2;
        MoveJ GetAproachTarget(pSeam21_1),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam21_1,speedAproach,seamShared,weldShared_1\Weave:=weaveShared_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_1\SeamName:="WeldSeam";
        RefreshDisp\X\Y\Z,peSeam21_2,posAOSeam21_2,pSeam21_2,pSeamFound1_1,pSeamFound1_2;
        ArcL pSeam21_2,speedWeld,seamShared,weldShared_1\Weave:=weaveShared_1,zoneWeld,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_1;
        RefreshDisp\X\Y\Z,peSeam21_3,posAOSeam21_3,pSeam21_3,pSeamFound1_1,pSeamFound1_2;
        ArcL pSeam21_3,speedWeld,seamShared,weldShared_1\Weave:=weaveShared_1,zoneWeld,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_1;
        RefreshDisp\Y\Z,peSeam21_4,posAOSeam21_4,pSeam21_4,pSeamFound1_1,pSeamFound1_2;
        RefreshDisp\X,peSeam21_4,posAOSeam21_4,pSeam21_4,pSeamFound2_1,pSeamFound2_2;
        ArcL pSeam21_4,speedWeld,seamShared,weldShared_1\Weave:=weaveShared_1,zoneWeld,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_1;
        RefreshDisp\Y\Z,peSeam21_5,posAOSeam21_5,pSeam21_5,pSeamFound1_1,pSeamFound1_2;
        RefreshDisp\X,peSeam21_5,posAOSeam21_5,pSeam21_5,pSeamFound2_1,pSeamFound2_2;
        ArcL pSeam21_5,speedAproach,seamShared,weldShared_6\Weave:=weaveShared_6,zoneWeld,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_6;
        RefreshDisp\Y\Z,peSeam21_6,posAOSeam21_6,pSeam21_6,pSeamFound1_1,pSeamFound1_2;
        RefreshDisp\X,peSeam21_6,posAOSeam21_6,pSeam21_6,pSeamFound2_1,pSeamFound2_2;
        ArcL pSeam21_6,speedWeld,seamShared,weldShared_6\Weave:=weaveShared_6,zoneWeld,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_6;
        RefreshDisp\X\Y\Z,peSeam21_7,posAOSeam21_7,pSeam21_7,pSeamFound2_1,pSeamFound2_2;
        ArcL pSeam21_7,speedWeld,seamShared,weldShared_2\Weave:=weaveShared_2,zoneWeld,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_2;
        RefreshDisp\X\Y\Z,peSeam21_8,posAOSeam21_8,pSeam21_8,pSeamFound2_1,pSeamFound2_2;
        ArcLEnd pSeam21_8,speedWeld,seamShared,weldShared_2\Weave:=weaveShared_2,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_2;
        MoveL GetAproachTarget(pSeam21_8),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        PDispOff;

        MoveAbsJ [[106.626,-66.1115,30.6261,79.0368,-44.0713,-81.2002],[567.974,449.71,440.405,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

    UNDO
        PDispOff;
    ENDPROC

    LOCAL PROC Seam_24()
        Stop;
        MoveAbsJ [[-89.7306,-43.1368,0,-20,-65.7254,270],[-800,500,0,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound3_1,pSearchSeam3_1,scanJoint3,speedAproach,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound3_2,pSearchSeam3_2,scanJoint3,speedAproach,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[-151.286,-18.7531,-14.2564,-45.3536,-84.2743,301.248],[-800,500,230.338,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound4_1,pSearchSeam4_1,scanJoint4,speedAproach,toolLaser\WObj:=wobjCurrent;
        ScanSeamByLaser pSeamFound4_2,pSearchSeam4_2,scanJoint4,speedAproach,toolLaser\WObj:=wobjCurrent;
        MoveAbsJ [[-91.6084,-32.3753,-0.280293,-50.9631,-57.0723,194.327],[-800,500,207.46,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolLaser\WObj:=wobjCurrent;

        MoveAbsJ [[-52.7557,-43.8883,36.8223,15.4091,-52.0967,115.276],[-737.076,502.617,361.603,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

        RefreshDisp\X\Y\Z,peSeam24_1,posAOSeam24_1,pSeam24_1,pSeamFound3_1,pSeamFound3_2;
        MoveJ GetAproachTarget(pSeam24_1),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        ArcLStart pSeam24_1,speedAproach,seamShared,weldShared_1\Weave:=weaveShared_1,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_1\SeamName:="WeldSeam";
        RefreshDisp\X\Y\Z,peSeam24_2,posAOSeam24_2,pSeam24_2,pSeamFound3_1,pSeamFound3_2;
        ArcL pSeam24_2,speedWeld,seamShared,weldShared_1\Weave:=weaveShared_1,zoneWeld,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_1;
        RefreshDisp\X\Y\Z,peSeam24_3,posAOSeam24_3,pSeam24_3,pSeamFound3_1,pSeamFound3_2;
        ArcL pSeam24_3,speedWeld,seamShared,weldShared_1\Weave:=weaveShared_1,zoneWeld,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_1;
        RefreshDisp\Y\Z,peSeam24_4,posAOSeam24_4,pSeam24_4,pSeamFound3_1,pSeamFound3_2;
        RefreshDisp\X,peSeam24_4,posAOSeam24_4,pSeam24_4,pSeamFound4_1,pSeamFound4_2;
        ArcL pSeam24_4,speedWeld,seamShared,weldShared_1\Weave:=weaveShared_1,zoneWeld,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_1;
        RefreshDisp\Y\Z,peSeam24_5,posAOSeam24_5,pSeam24_5,pSeamFound3_1,pSeamFound3_2;
        RefreshDisp\X,peSeam24_5,posAOSeam24_5,pSeam24_5,pSeamFound4_1,pSeamFound4_2;
        ArcL pSeam24_5,speedAproach,seamShared,weldShared_6\Weave:=weaveShared_6,zoneWeld,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_6;
        RefreshDisp\Y\Z,peSeam24_6,posAOSeam24_6,pSeam24_6,pSeamFound3_1,pSeamFound3_2;
        RefreshDisp\X,peSeam24_6,posAOSeam24_6,pSeam24_6,pSeamFound4_1,pSeamFound4_2;
        ArcL pSeam24_6,speedWeld,seamShared,weldShared_6\Weave:=weaveShared_6,zoneWeld,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_6;
        RefreshDisp\X\Y\Z,peSeam24_7,posAOSeam24_7,pSeam24_7,pSeamFound4_1,pSeamFound4_2;
        ArcL pSeam24_7,speedWeld,seamShared,weldShared_2\Weave:=weaveShared_2,zoneWeld,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_2;
        RefreshDisp\X\Y\Z,peSeam24_8,posAOSeam24_8,pSeam24_8,pSeamFound4_1,pSeamFound4_2;
        ArcLEnd pSeam24_8,speedWeld,seamShared,weldShared_2\Weave:=weaveShared_2,fine,toolWeldGun\WObj:=wobjCurrent\Track:=trackShared_2;
        MoveL GetAproachTarget(pSeam24_8),speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        PDispOff;

        MoveAbsJ [[-94.6272,-62.3288,31.5236,-67.9884,-28.6289,132.373],[-732.484,502.809,311.327,9E+09,9E+09,9E+09]],speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;

    UNDO
        PDispOff;
    ENDPROC

ENDMODULE