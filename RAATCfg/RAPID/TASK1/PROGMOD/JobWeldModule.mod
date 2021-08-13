MODULE JobWeldModule
    !*****************************************************
    !Module Name:   JobWeldModule
    !Version:       1.0
    !Description:   
    !Date:          2021-6-30
    !Author:        Michael
    !*****************************************************

    TASK PERS partdata partJobWeld:=["JobWeld","","T_ROB1",1,101,"",""];

    PERS string strWeldPartList{20}:=["1002","1002","1002","1001","0003","0002","0001","0001","","","","","","","","","","","",""];
    PERS pos posWeldPartList{20}:=[[0,0,0],[-513,-36,67],[487,0,24],[-2165.21,-61.9333,59.0019],[-1450,-1100,40],[-250,-1100,40],[2188,-688,328],[2188,321,328],[2500,0,850],[13500,0,0],[18000,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]];
    PERS num numModelQuantity:=1;

    PROC JobWeld()
        FOR index FROM 1 TO numModelQuantity DO
            IF strWeldPartList{index}<>"" THEN
                Logging "Job Weld: "+ValToStr(index)+"/"+ValToStr(numModelQuantity)+" - "+strWeldPartList{index};
                Logging "Pos: "+ValToStr(posWeldPartList{index});
                wobjCurrent.uframe.trans:=posWeldPartList{index};
                wobjCurrent.uframe.rot:=[1,0,0,0];
                wobjCurrent.oframe:=[[0,0,0],[1,0,0,0]];
                extGantryOffsetCurrent:=GetExtOffset(posWeldPartList{index});
                Logging "Gantry: ["+ValToStr(extGantryOffsetCurrent.eax_a)+","+ValToStr(extGantryOffsetCurrent.eax_b)+","+ValToStr(extGantryOffsetCurrent.eax_c)+"]";
                IF boolDebugMode THEN
                    Logging "Enter debug mode...";
                    Stop;
                ENDIF
                jointHome.extax:=extGantryOffsetCurrent;
                jointHome.extax.eax_c:=extGantryHome.eax_c;
                MoveAbsJ jointHome,speedAir,fine,toolWeldGun\WObj:=wobj0;
                %"Template_"+strWeldPartList{index}%;
                MovetoHome;
            ENDIF
        ENDFOR
    ENDPROC

ENDMODULE