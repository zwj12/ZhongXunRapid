MODULE YAMLModule
    !*****************************************************
    !Module Name:   YAMLModule
    !Version:       1.0
    !Description:   
    !Date:          2021-7-1
    !Author:        Michael
    !*****************************************************

    !The format of the model data yaml file name is job_xxx
    TASK PERS string strModelDataYamlFileName:="job_1.yml";
    TASK PERS string strYamlTestFileName:="jobTest.yml";
    TASK PERS string strYamlPath:="yaml/";
    VAR iodev iodevYamlFile;

    TASK PERS string strTest1:="Michael";
    TASK PERS string strTest2:="4";
    TASK PERS num numTest1:=5;
    TASK PERS num numTest2:=2;
    TASK PERS bool boolTest1:=TRUE;
    TASK PERS bool boolTest2:=FALSE;
    TASK PERS string strArrayTest1{6}:=["0001","0001","0001","0003","0001",""];

    TASK PERS RECORDModelData rModelDataArray{20}:=[["1001",[0,0,0]],["1002",[0,0,0]],["",[0,0,0]],["",[0,0,0]],["",[0,0,0]],["",[0,0,0]],["",[0,0,0]],["",[0,0,0]],["",[0,0,0]],["",[0,0,0]],["",[0,0,0]],["",[0,0,0]],["",[0,0,0]],["",[0,0,0]],["",[0,0,0]],["",[0,0,0]],["",[0,0,0]],["",[0,0,0]],["",[0,0,0]],["",[0,0,0]]];

    !The indentation for scope is two spaces
    !The yaml file can't have comments and blank line
    !Only support normal variable and array
    !The base type of data must be string
    PROC LoadYamlTestFile()
        VAR string strTaskName;
        VAR string strLine;
        VAR num numSplitAt;
        VAR bool boolEOS;

        Close iodevYamlFile;
        Open "HOME:"\File:=strYamlTestFileName,iodevYamlFile\Read;
        strLine:=ReadStr(iodevYamlFile);
        strTaskName:=GetFirstSplitString(strLine,1,":"\boolEOS:=boolEOS);

        strLine:=ReadStr(iodevYamlFile);
        UpdateVariable_string strTaskName,strLine;

        strLine:=ReadStr(iodevYamlFile);
        UpdateArray_string strTaskName,strLine,strWeldPartList;

        UpdateVariable_num strTaskName,strLine;

        strLine:=ReadStr(iodevYamlFile);
        UpdateVariable_bool strTaskName,strLine;

        strLine:=ReadStr(iodevYamlFile);
        UpdateArray_pos strTaskName,strLine,posWeldPartList;

        Close iodevYamlFile;

        Logging "Yaml: "+strYamlTestFileName+" is loaded";
    ENDPROC

    PROC LoadModelDataYamlFile(string strYamlFileName)
        VAR string strTaskName;
        VAR string strLine;
        VAR num numSplitAt;
        VAR bool boolEOS;

        Close iodevYamlFile;
        Open "HOME:"\File:=strYamlPath+strYamlFileName,iodevYamlFile\Read;

        strLine:=ReadStr(iodevYamlFile);
        strLine:=ReadStr(iodevYamlFile);
        UpdateArray_modelData strTaskName,strLine,rModelDataArray;

        Close iodevYamlFile;

        Logging "Yaml: "+strYamlFileName+" is loaded";
    ENDPROC

    !Format:
    !  Template:
    !    - ["1001",[0,0,0]]
    !    - ["1001",[1000,0,0]]
    !    - ["1001",[2000,0,0]]
    !    - ["1001",[3000,0,0]]
    !    - ["1001",[4000,0,0]]
    PROC UpdateArray_modelData(string strTaskName,INOUT string strLine,INOUT RECORDModelData ModelDataArray{*})
        VAR string strDataName;
        VAR string strData;
        VAR num numSplitAt;
        VAR num numDataArrayIndex:=0;
        VAR RECORDModelData rModelData;
        VAR bool ok;
        strDataName:=GetFirstSplitString(strLine,3,":"\numSplitAt:=numSplitAt);
        IF strDataName<>ArgName(ModelDataArray) THEN
            Logging "The name of the original data object is not "+strDataName;
            RAISE 1;
        ENDIF

        strLine:=ReadStr(iodevYamlFile);
        WHILE strLine<>EOF AND StrPart(strLine,1,6)="    - " DO
            Incr numDataArrayIndex;
            strData:=StrPart(strLine,7,StrLen(strLine)-6);
            ok:=StrToVal(strData,rModelData);
            ModelDataArray{numDataArrayIndex}:=rModelData;
            strLine:=ReadStr(iodevYamlFile);
        ENDWHILE
        IF numDataArrayIndex<Dim(ModelDataArray,1) THEN
            FOR i FROM numDataArrayIndex+1 TO Dim(ModelDataArray,1) DO
                ModelDataArray{i}:=["",[0,0,0]];
            ENDFOR
        ENDIF
    ENDPROC

    !Format:
    !  strWeldPartList:
    !    - 0001
    !    - 0002
    !    - 0003
    !    - 0003
    !    - 0003
    PROC UpdateArray_string(string strTaskName,INOUT string strLine,INOUT string strArray{*})
        VAR string strDataName;
        VAR string strData;
        VAR num numSplitAt;
        VAR num numDataArrayIndex:=0;
        strDataName:=GetFirstSplitString(strLine,3,":"\numSplitAt:=numSplitAt);
        IF strDataName<>ArgName(strArray) THEN
            Logging "The name of the original data object is not "+strDataName;
            RAISE 1;
        ENDIF

        strLine:=ReadStr(iodevYamlFile);
        WHILE strLine<>EOF AND StrPart(strLine,1,6)="    - " DO
            Incr numDataArrayIndex;
            strData:=StrPart(strLine,7,StrLen(strLine)-6);
            strArray{numDataArrayIndex}:=strData;
            strLine:=ReadStr(iodevYamlFile);
        ENDWHILE
        IF numDataArrayIndex<Dim(strArray,1) THEN
            FOR i FROM numDataArrayIndex+1 TO Dim(strArray,1) DO
                strArray{i}:="";
            ENDFOR
        ENDIF
    ENDPROC

    !Format:
    !  posWeldPartList:
    !    - [0,0,0]
    !    - [4500,0,0]
    !    - [9000,0,0]
    !    - [13500,0,0]
    !    - [18000,0,0]
    PROC UpdateArray_pos(string strTaskName,INOUT string strLine,INOUT pos posArray{*})
        VAR string strDataName;
        VAR string strData;
        VAR num numSplitAt;
        VAR num numDataArrayIndex:=0;
        VAR pos posData;
        VAR bool ok;
        strDataName:=GetFirstSplitString(strLine,3,":"\numSplitAt:=numSplitAt);
        IF strDataName<>ArgName(posArray) THEN
            Logging "The name of the original data object is not "+strDataName;
            RAISE 1;
        ENDIF

        strLine:=ReadStr(iodevYamlFile);
        WHILE strLine<>EOF AND StrPart(strLine,1,6)="    - " DO
            Incr numDataArrayIndex;
            strData:=StrPart(strLine,7,StrLen(strLine)-6);
            ok:=StrToVal(strData,posData);
            posArray{numDataArrayIndex}:=posData;
            strLine:=ReadStr(iodevYamlFile);
        ENDWHILE
        IF numDataArrayIndex<Dim(posArray,1) THEN
            FOR i FROM numDataArrayIndex+1 TO Dim(posArray,1) DO
                posArray{i}:=[0,0,0];
            ENDFOR
        ENDIF
    ENDPROC

    !Format:"  strTest1: Michael"
    PROC UpdateVariable_string(string strTaskName,string strLine)
        VAR string strDataName;
        VAR string strData;
        VAR num numSplitAt;
        strDataName:=GetFirstSplitString(strLine,3,":"\numSplitAt:=numSplitAt);
        strData:=StrPart(strLine,numSplitAt+2,StrLen(strLine)-numSplitAt-1);
        SetDataVal strDataName\TaskName:=strTaskName,strData;
    ENDPROC

    !Format:"  numTest1: 3"
    PROC UpdateVariable_num(string strTaskName,string strLine)
        VAR string strDataName;
        VAR string strData;
        VAR num numSplitAt;
        VAR num numData;
        VAR bool ok;
        strDataName:=GetFirstSplitString(strLine,3,":"\numSplitAt:=numSplitAt);
        strData:=StrPart(strLine,numSplitAt+2,StrLen(strLine)-numSplitAt-1);
        ok:=StrToVal(strData,numData);
        SetDataVal strDataName\TaskName:=strTaskName,numData;
    ENDPROC

    !Format:"  boolTest1: TRUE"
    PROC UpdateVariable_bool(string strTaskName,string strLine)
        VAR string strDataName;
        VAR string strData;
        VAR num numSplitAt;
        VAR bool boolData;
        VAR bool ok;
        strDataName:=GetFirstSplitString(strLine,3,":"\numSplitAt:=numSplitAt);
        strData:=StrPart(strLine,numSplitAt+2,StrLen(strLine)-numSplitAt-1);
        boolData:=StrMap(strData,STR_LOWER,STR_UPPER)="TRUE";
        SetDataVal strDataName\TaskName:=strTaskName,boolData;
    ENDPROC

    FUNC string GetFirstSplitString(string strInput,num numStartAt,string strSplitChar,\INOUT num numSplitAt\INOUT bool boolEOS)
        VAR string strTemp;
        VAR num numFound;
        numFound:=StrFind(strInput,numStartAt,strSplitChar);
        strTemp:=StrPart(strInput,numStartAt,numFound-numStartAt);
        IF Present(numSplitAt) THEN
            numSplitAt:=numFound;
        ENDIF
        IF Present(boolEOS) THEN
            IF numFound=StrLen(strInput) THEN
                boolEOS:=TRUE;
            ELSE
                boolEOS:=FALSE;
            ENDIF
        ENDIF
        RETURN strTemp;
    ENDFUNC

ENDMODULE