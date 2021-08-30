MODULE JobWeldModule
    !*****************************************************
    !Module Name:   JobWeldModule
    !Version:       1.0
    !Description:   
    !Date:          2021-6-30
    !Author:        Michael
    !*****************************************************

    TASK PERS partdata partJobWeld:=["JobWeld","","T_ROB1",1,101,"",""];

    PERS string strWeldPartList{20}:=["30023","20014","1002","1001","0003","0002","0001","0001","","","","","","","","","","","",""];
    PERS pos posWeldPartList{20}:=[[-500,0,60],[-2160,-50,60],[487,0,24],[-2165.21,-61.9333,59.0019],[-1450,-1100,40],[-250,-1100,40],[2188,-688,328],[2188,321,328],[2500,0,850],[13500,0,0],[18000,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]];
    PERS string strWeldPartListOld{20}:=["10023","10014","20014","20023","0003","0002","0001","0001","","","","","","","","","","","",""];
    PERS pos posWeldPartListOld{20}:=[[-513,-36,67],[-2165,-61,59],[-2160,-50,60],[-560,-50,60],[-1450,-1100,40],[-250,-1100,40],[2188,-688,328],[2188,321,328],[2500,0,850],[13500,0,0],[18000,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]];
    PERS num numModelStart:=1;
    PERS num numModelQuantity:=1;

    PROC JobWeld()
        FOR index FROM numModelStart TO numModelQuantity DO
            IF strWeldPartList{index}<>"" THEN
                Logging "Job Weld: "+ValToStr(index)+"/"+ValToStr(numModelQuantity)+" - "+strWeldPartList{index};
                Logging "Pos: "+ValToStr(posWeldPartList{index});
                wobjCurrent.uframe.trans:=posWeldPartList{index};
                wobjCurrent.uframe.rot:=[1,0,0,0];
                wobjCurrent.oframe:=[[0,0,0],[1,0,0,0]];
                IF boolDebugMode THEN
                    Logging "Enter debug mode...";
                    Stop;
                ENDIF
                %"Template_"+strWeldPartList{index}%;
                MovetoHome;
            ENDIF
        ENDFOR
    ENDPROC

ENDMODULE