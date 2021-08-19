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
    TASK PERS extjoint extGantryOffsetCurrent:=[0,0,0,9E+9,9E+9,9E+9];

    TASK PERS seamdata seamCurrent:=[0.5,0.5,[0,0,0,0,0,0,0,0,0],0,0,0,0,0,[0,0,0,0,0,0,0,0,0],0,0,[0,0,0,0,0,0,0,0,0],0,0,[0,0,0,0,0,0,0,0,0],0];
    TASK PERS welddata weldCurrent:=[6,0,[38,0,-1,0,0,350,0,0,0],[0,0,0,0,0,0,0,0,0]];
    TASK PERS weavedata weaveCurrent:=[1,0,4,6,0,0,0,0,0,0,0,0,0,0,0];
    TASK PERS trackdata trackCurrent:=[0,TRUE,50,[0,30,30,0,0,0,0,0,0],[0,0,0,0,0,0,0]];

    PERS jointtarget jointReadyQuadrant1:=[[90,-75,45,90,-45,-180],[800,500,-500,9E+9,9E+9,9E+9]];
    PERS jointtarget jointReadyQuadrant2:=[[-60,-80,0,0,60,90],[-800,500,-433,9E+09,9E+09,9E+09]];
    PERS jointtarget jointReadyQuadrant3:=[[-120,-80,0,0,60,270],[-800,-500,-433,9E+09,9E+09,9E+09]];
    PERS jointtarget jointReadyQuadrant4:=[[90,-75,45,90,45,0],[800,-500,-433,9E+09,9E+09,9E+09]];
    
    PERS string strTemplateList{20}:=["1001","1002","","","","","","","","","","","","","","","","","",""];

    PROC MoveToReadyQuadrant(num numQuadrant)
        VAR pos posGantryOffsetDirection:=[0,0,0];
        posGantryOffsetDirection:=GetGantryOffsetDirection(numQuadrant);
        TEST numQuadrant
        CASE 1:
            jointReadyQuadrant1.extax.eax_a:=extjointGantryOffset.eax_a*posGantryOffsetDirection.x;
            jointReadyQuadrant1.extax.eax_b:=extjointGantryOffset.eax_b*posGantryOffsetDirection.y;
            jointReadyQuadrant1.extax.eax_c:=extGantryHome.eax_c-C_PROGDISP.eoffs.eax_c;
            jointCurrent:=jointReadyQuadrant1;
        CASE 2:
            jointReadyQuadrant2.extax.eax_a:=extjointGantryOffset.eax_a*posGantryOffsetDirection.x;
            jointReadyQuadrant2.extax.eax_b:=extjointGantryOffset.eax_b*posGantryOffsetDirection.y;
            jointReadyQuadrant2.extax.eax_c:=extGantryHome.eax_c-C_PROGDISP.eoffs.eax_c;
            jointCurrent:=jointReadyQuadrant2;
        CASE 3:
            jointReadyQuadrant3.extax.eax_a:=extjointGantryOffset.eax_a*posGantryOffsetDirection.x;
            jointReadyQuadrant3.extax.eax_b:=extjointGantryOffset.eax_b*posGantryOffsetDirection.y;
            jointReadyQuadrant3.extax.eax_c:=extGantryHome.eax_c-C_PROGDISP.eoffs.eax_c;
            jointCurrent:=jointReadyQuadrant3;
        CASE 4:
            jointReadyQuadrant4.extax.eax_a:=extjointGantryOffset.eax_a*posGantryOffsetDirection.x;
            jointReadyQuadrant4.extax.eax_b:=extjointGantryOffset.eax_b*posGantryOffsetDirection.y;
            jointReadyQuadrant4.extax.eax_c:=extGantryHome.eax_c-C_PROGDISP.eoffs.eax_c;
            jointCurrent:=jointReadyQuadrant4;
        CASE 14:
            jointReadyQuadrant1.extax.eax_a:=extjointGantryOffset.eax_a*posGantryOffsetDirection.x;
            jointReadyQuadrant1.extax.eax_b:=extjointGantryOffset.eax_b*posGantryOffsetDirection.y;
            jointReadyQuadrant1.extax.eax_c:=extGantryHome.eax_c-C_PROGDISP.eoffs.eax_c;
            jointCurrent:=jointReadyQuadrant1;
        CASE 23:
            jointReadyQuadrant2.extax.eax_a:=extjointGantryOffset.eax_a*posGantryOffsetDirection.x;
            jointReadyQuadrant2.extax.eax_b:=extjointGantryOffset.eax_b*posGantryOffsetDirection.y;
            jointReadyQuadrant2.extax.eax_c:=extGantryHome.eax_c-C_PROGDISP.eoffs.eax_c;
            jointCurrent:=jointReadyQuadrant2;
        DEFAULT:
            RETURN ;
        ENDTEST
        MoveAbsJ jointCurrent,speedAir,zoneAir,toolWeldGun\WObj:=wobjCurrent;
        !Stop;
        !MoveAbsJ jointReadyQuadrant1, speedAir, fine, toolWeldGun\WObj:=wobjCurrent;
    ENDPROC


ENDMODULE