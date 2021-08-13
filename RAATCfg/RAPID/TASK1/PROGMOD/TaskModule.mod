MODULE TaskModule
    !*****************************************************
    !Module Name: TaskModule
    !Version:     1.0
    !Description: This module stroes ths data which are not shared among other tasks
    !Date:        2021-1-6
    !Author:      Michael
    !*****************************************************

    !2021-8-11, Michael, Add extjointGantryReadyOffset, extjointGantryDepart

    TASK PERS extjoint extGantryHome:=[0,0,-500,9E+09,9E+09,9E+09];
    TASK PERS extjoint extGantryTranslation:=[0,0,0,9E+9,9E+9,9E+9];
    TASK PERS extjoint extjointGantryOffset:=[800,500,-1200,9E+9,9E+9,9E+9];
    
    TASK PERS extjoint extjointGantryDepart:=[500,100,-500,9E+9,9E+9,9E+9];

    TASK PERS pose posePathDisplacementCurrentList{32}:=[[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
    TASK PERS pos posTargetCurrentList{32}:=[[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]];
    TASK PERS extjoint extGantryOffsetCurrent:=[-513,-36,-67,9E+09,9E+09,9E+09];

    TASK PERS seamdata seamCurrent:=[0.5,0.5,[0,0,0,0,0,0,0,0,0],0,0,0,0,0,[0,0,0,0,0,0,0,0,0],0,0,[0,0,0,0,0,0,0,0,0],0,0,[0,0,0,0,0,0,0,0,0],0];
    TASK PERS welddata weldCurrent:=[6,0,[38,0,-1,0,0,350,0,0,0],[0,0,0,0,0,0,0,0,0]];
    TASK PERS weavedata weaveCurrent:=[1,0,4,6,0,0,0,0,0,0,0,0,0,0,0];
    TASK PERS trackdata trackCurrent:=[0,TRUE,50,[0,30,30,0,0,0,0,0,0],[0,0,0,0,0,0,0]];

ENDMODULE