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

    PERS jointtarget jointReadyQuadrant1:=[[-90,-75,45,90,-45,180],[-800,-500,-0.00013411,9E+09,9E+09,9E+09]];
    PERS jointtarget jointReadyQuadrant2:=[[-60,-80,0,0,60,90],[-800,500,0.00276417,9E+09,9E+09,9E+09]];
    PERS jointtarget jointReadyQuadrant3:=[[-120,-80,0,0,60,270],[-800,-500,-87,9E+09,9E+09,9E+09]];
    PERS jointtarget jointReadyQuadrant4:=[[-90,-75,45,90,-45,180],[-800,-500,-0.00013411,9E+09,9E+09,9E+09]];

    PROC MoveToReadyQuadrant(num numQuadrant)
        VAR pos posGantryOffsetDirection:=[0,0,0];
        posGantryOffsetDirection:=GetGantryOffsetDirection(numQuadrant);
        TEST numQuadrant
        CASE 1:
            jointCurrent:=jointReadyQuadrant1;
            jointCurrent.extax.eax_a:=extjointGantryOffset.eax_a*posGantryOffsetDirection.x;
            jointCurrent.extax.eax_b:=extjointGantryOffset.eax_b*posGantryOffsetDirection.y;
        CASE 2:
            jointCurrent:=jointReadyQuadrant2;
            jointCurrent.extax.eax_a:=extjointGantryOffset.eax_a*posGantryOffsetDirection.x;
            jointCurrent.extax.eax_b:=extjointGantryOffset.eax_b*posGantryOffsetDirection.y;
        CASE 3:
            jointCurrent:=jointReadyQuadrant3;
            jointCurrent.extax.eax_a:=extjointGantryOffset.eax_a*posGantryOffsetDirection.x;
            jointCurrent.extax.eax_b:=extjointGantryOffset.eax_b*posGantryOffsetDirection.y;
        CASE 4:
            jointCurrent:=jointReadyQuadrant4;
            jointCurrent.extax.eax_a:=extjointGantryOffset.eax_a*posGantryOffsetDirection.x;
            jointCurrent.extax.eax_b:=extjointGantryOffset.eax_b*posGantryOffsetDirection.y;
        CASE 14:
            jointCurrent:=jointReadyQuadrant1;
            jointCurrent.extax.eax_a:=extjointGantryOffset.eax_a*posGantryOffsetDirection.x;
            jointCurrent.extax.eax_b:=extjointGantryOffset.eax_b*posGantryOffsetDirection.y;
        CASE 23:
            jointCurrent:=jointReadyQuadrant2;
            jointCurrent.extax.eax_a:=extjointGantryOffset.eax_a*posGantryOffsetDirection.x;
            jointCurrent.extax.eax_b:=extjointGantryOffset.eax_b*posGantryOffsetDirection.y;
        DEFAULT:
            RETURN ;
        ENDTEST
        jointCurrent.extax.eax_c:=extGantryHome.eax_c-C_PROGDISP.eoffs.eax_c;
        MoveAbsJ jointCurrent,speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        !Stop;
        !MoveAbsJ jointReadyQuadrant2, speedAir, fine, toolWeldGun\WObj:=wobjCurrent;
    ENDPROC


ENDMODULE