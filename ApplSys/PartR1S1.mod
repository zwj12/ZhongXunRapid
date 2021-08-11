%%%
  VERSION:1
  LANGUAGE:ENGLISH
%%%

MODULE PartR1S1
  !**********************************************************
  !
  ! (c) ABB
  !
  !**********************************************************
  !
  ! Module:       PartR1S1
  !
  ! Written by:   S�
  !
  ! Description:  Module that holds the robot 1 program for station 1.
  !
  ! Procedures:   ProgStn1
  !
  ! Functions:    None
  !
  ! Created:      2003-12-02
  !
  ! Version:      1.0
  !
  ! History:      1.0
  !                 Created
  !               2005-09-16 S�
  !                 Changed deklaration of partdata to TASK PERS due to
  !                 problems in production manager when editing part.
  !               2005-11-04 S�
  !                 Changed def for partadv data to match changes to the datatype, service angle added
  !
  !************************************************************
  !
  TASK PERS partdata pdProgStn1:=["ProgStn1","Program station 1","",1,0,"GapEmptyPart200.gif","pdvProgStn1"];
  PERS partadv pdvProgStn1:=[[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,[0,0,0],[0,0,0,0],0,0,0]];
  !
  !---------------------------------------------------------------------------
  ! Procedure ProgStn1
  !---------------------------------------------------------------------------
  ! Desc: Program for station 1
  !
  ! Parameters: None
  !
  !---------------------------------------------------------------------------
  ! History:
  ! - <DATE> ! Created ! <AUTHOR>
  PROC ProgStn1()
    !
    ! This is the work program for station 1
    ! Put your process instructions here or
    ! put a procedure call for your program
    !
    ! Remove below stop instruction before
    ! production.
    !
    !**************************************
    ! For error handling Use:
    !  RecoveryPosSet and RecoveryPosReset
    !
    !  There is a limitations to the use of RecoveryPosSet. The Pathrecorder can not be turned on
    !  with RecoveryPosSet before a WaitSyncTask instruction, i.e. the robot can never escape past
    !  a WaitSyncTask instruction. Therefore, make sure that RecoveryPosSet is always used after
    !  the WaitSyncTask instruction in the RAPID program.
    !
    Stop;
    !
  ENDPROC
ENDMODULE
