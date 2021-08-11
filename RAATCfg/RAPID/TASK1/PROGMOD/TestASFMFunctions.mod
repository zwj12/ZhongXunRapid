MODULE TestASFMFunctions
!**************************************************************
! Test program for the ASFM software module from Servo-Robot 
!(Ethernet TCP/IP based on RCL APP protocol)
!   
! Requirements    Requires the PC Interface option from ABB (616-1)
!                 The CommSF.sys module from Servo-Robot must be installed
! Version:        Rel151001.122 (vision system)
! Author:         Servo-Robot (CDR)
! Copyright:      Servo-Robot Inc. 2020
!**************************************************************

    RECORD SenorSchdule
        num nRetCou; ! Retry Count
        num nRetDis; ! Retry distance
        num ndY;     ! Y-bias
        num ndZ;     ! Z-bias
    ENDRECORD
    
    RECORD JointSize
        num Gap;
        num Mismatch;
        num Aera;
    ENDRECORD

    VAR caldata TestData;
    VAR corrdata MData;
    VAR corrdata3 MDataX;
    
    VAR string Laser_IP_Add:="192.168.1.3";
    
    VAR robtarget CurPos; !Position at program start
    VAR robtarget CalA;   !Position for cam to tool calibration
    VAR robtarget M0P1;   !Position for testing of ASFM Mode 0 (Task #420 for vision)
    VAR robtarget M1P1;   !Position for testing of ASFM Mode 1 (Task #420 for vision)
    VAR robtarget M3P1;   !Position for testing of ASFM Mode 3 (first measurement ;Task #420 for vision)
    VAR robtarget M3P2;   !Position for testing of ASFM Mode 3 (second measurement ;Task #420 for vision)
    VAR robtarget M5P1;   !Position for testing of ASFM Mode 5 and 9 (first measurement ;Task #420 for vision)
    VAR robtarget M5P2;   !Position for testing of ASFM Mode 5 and 9 (second measurement ;Task #420 for vision)
    VAR robtarget M5P3;   !Position for testing of ASFM Mode 5 and 9 (third measurement ;Task #421 for vision)
    VAR robtarget M4P1;   !Position for testing of ASFM Mode 4 and 6 (first measurement ;Task #420 for vision)
    VAR robtarget M4P2;   !Position for testing of ASFM Mode 4 and 6 (second measurement ;Task #420 for vision)
    VAR robtarget M4P3;   !Position for testing of ASFM Mode 4 and 6 (third measurement ;Task #421 for vision)
    VAR robtarget M4P4;   !Position for testing of ASFM Mode 4 and 6 (fourth measurement ;Task #421 for vision)
    VAR robtarget M8P1;   !Position for testing of ASFM Mode 8 (first measurement ;Task #422 for vision)
    VAR robtarget M8P2;   !Position for testing of ASFM Mode 8 (second measurement ;Task #422 for vision)
    VAR robtarget M8P3;   !Position for testing of ASFM Mode 8 (third measurement ;Task #423 for vision)
    VAR iodev LogTestASFM;!To log data from the test in a TXT file
    
    PERS wobjdata CalBase:=[FALSE,TRUE,"",[[969.12,-344.986,475.659],[0.99989,0.00216683,-0.0022392,-0.0144833]],[[0,0,0],[1,0,0,0]]];
    PERS wobjdata TestBase:=[FALSE,TRUE,"",[[910.298,-134.211,461.954],[0.909807,0.00291808,-0.00538688,-0.414986]],[[0,0,0],[1,0,0,0]]];
    PERS tooldata TestTool:=[TRUE,[[-5.06169,1.24367,355.949],[0.378591,0.897664,-0.223253,-0.0320518]],[2,[50,50,100],[1,0,0,0],0,0,0]];
    PERS tooldata ASFM_OpticalTool:=[TRUE,[[42.217,-13.3743,372.175],[0.403921,0.890535,-0.0691935,0.197501]],[2,[50,50,100],[1,0,0,0],0,0,0]];
    
    PERS wobjdata acaltargetV2:=[FALSE,TRUE,"",[[-52.4387,-878.166,-1099.87],[0.693123,-0.0066676,0.00384977,-0.720778]],[[0,0,0],[1,0,0,0]]];
    PERS tooldata Ref_Pin:=[TRUE,[[-5.06169,1.24367,355.949],[0.378591,0.897664,-0.223253,-0.0320518]],[2,[50,50,100],[1,0,0,0],0,0,0]];    
    
    PERS corrdata Point1:=[0,3,-2172.42,347.84,67.22,0,0,0,50.65,0,0];
    PERS corrdata Point2:=[0,3,-0.03,-1.36,-0.94,0,0,0,0,0,0];
    PERS corrdata Point2_basic:=[0,1,0,0,0,0,0,0,0,0,0];
    PERS corrdata Point3:=[0,3,0.25,4.14,0.08,0,0,0,0,1.06,0];
    PERS corrdata Point4:=[0,-8,0,0,0,0,0,0,0,0,0];
    PERS corrdata Point2_1{20};
    PERS corrdata Point_basic{20};
    
    PERS SenorSchdule SenSch1:=[3,3,0,0];
    PERS JointSize js1:=[3,3,0];
    
    PERS robtarget pFound1:=[[-2004.57,-49.23,790.39],[0.134981,-0.694087,-0.694124,-0.134962],[-1,-1,2,1],[-1997.56,0.00301543,-400,9E+09,9E+09,9E+09]];
    PERS robtarget pSF1:=[[-1996.00,-139.54,1093.72],[0.134981,-0.694087,-0.694124,-0.134962],[-1,-1,2,1],[-1997.56,0.00301543,-599.991,9E+09,9E+09,9E+09]];
    PERS robtarget pFound2:=[[-673.22,-1054.19,-911.39],[0.115425,-0.677295,-0.714325,-0.132997],[0,2,-1,0],[-677.364,-341.094,-334.05,9E+09,9E+09,9E+09]];
    PERS robtarget pSF2:=[[-669.71,-1142.91,-766.23],[0.115425,-0.677295,-0.714325,-0.132997],[0,2,-1,0],[-677.364,-341.094,-334.05,9E+09,9E+09,9E+09]];
    
    PROC SeamFind(
        num ntask,
        \INOUT robtarget FoundPoint,
        robtarget SFPoint,
        speeddata vSpeed,
        JointSize js,
        SenorSchdule  SenSch,
        PERS tooldata Tool
        \PERS wobjdata Wobj
        )
        
        VAR robtarget pPoint1;
        var num nRetry:=0;
        
        pPoint1:=SFPoint;
        FoundPoint:=SFPoint;
       
        !!Open communication socket (IMPORTANT: take care to input the proper tool and wObj!)
!        IF NOT ASFMu_Initialize(Laser_IP_Add,2,TRUE,TRUE,TRUE,Tool,Wobj) THEN
!            TPWrite "The socket between laser and robot error Can't connect to vision controller"; 
!            stop;
!         ENDIF  
        
        MoveL SFPoint, vSpeed, fine, Tool\WObj:=Wobj;
        waittime 0.5;
     Lable1:          
        Point1:=ASFMu_GetPoint(ntask,10);     
        IF Point1.status <= 0 THEN                 
           IF (nRetry<SenSch.nRetCou)THEN        	                 
                pPoint1:=RelTool(pPoint1,SenSch.nRetDis,0,0);                         	  	
            	MoveL pPoint1,V10,fine,Tool\WObj:=Wobj;
            	Incr nRetry;
                TPWrite"Retry Num:"\Num:=nRetry;
            goto Lable1;
           EndIF              	
           IF nRetry>=SenSch.nRetCou THEN
               TPWrite "GetPoint error (err=" + ValToStr(Point1.status) +")."; 
               Stop;
          ENDIF  
        
        ELSE  
           FoundPoint.trans.x:=Point1.tx; 
           FoundPoint.trans.y:=Point1.ty; 
           FoundPoint.trans.z:=Point1.tz; 
           js.Gap:=Point1.gp;
           js.Mismatch:=Point1.ms;
           js.Aera:=Point1.ar;
        ENDIF 
        
!        Laser_Clear;

    ENDPROC
    
    PROC TestSF()
       
        IF NOT ASFMu_Initialize(Laser_IP_Add,2,TRUE,TRUE,TRUE,toolWeldGun,wobj0) THEN
            TPWrite "The socket between laser and robot error Can't connect to vision controller"; 
            stop;
         ENDIF  
        
        SeamFind 0\FoundPoint:=pFound1, pSF1, V100, js1, SenSch1, toolWeldGun\Wobj:=wobj0;
        !SeamFind 1,\Foundpoint:=pFound2,pSF2,V100,js1,SenSch1,toolWeldGun\Wobj:=wobj0;
        stop;
        MoveJ offs(pFound1,0,0,20),v100,fine,toolWeldGun\WObj:=wobj0;
        MoveL pFound1,v20,fine,toolWeldGun\WObj:=wobj0;
        MoveL pFound2,v20,fine,toolWeldGun\WObj:=wobj0;
        MoveL offs(pFound2,0,0,20),v100,fine,toolWeldGun\WObj:=wobj0;
        
    ENDPROC

        ! opens communication channel
    PROC Laser_Initialize()
        IF NOT ASFMu_Initialize(Laser_IP_Add,2,FALSE,FALSE,TRUE,TestTool,TestBase) THEN
            TPWrite "Can't connect to ASFM module on vision controller";
        ENDIF 
    ENDPROC
    
    ! Close communication channel
    PROC Laser_Clear()
        IF NOT ACALu_Clear() THEN 
            Stop; 
        ENDIF 
    ENDPROC
    
    ! Acknowledges vision system alarms
    PROC Laser_Ack()
        IF NOT ACALu_Ack() THEN 
        Stop; 
        ENDIF 
    ENDPROC 

    PROC LASER_ON()
        ASFM_Connect;
        IF NOT ASFMu_LaserOn(0) THEN
            STOP;
        ENDIF
    ENDPROC

    PROC LASER_OFF()
        ASFM_Connect;
        IF NOT ASFMu_LaserOff(0) THEN
            STOP;
        ENDIF
    ENDPROC

    PROC LASER_Enable()
        ASFM_Connect;
        IF NOT ASFMu_Enable(0) THEN
            STOP;
        ENDIF
    ENDPROC

    PROC LASER_Disable()
        ASFM_Connect;
        IF NOT ASFMu_Disable(0) THEN
            STOP;
        ENDIF
    ENDPROC
    
    PROC TestASFM()
        !!***IMPORTANT******IMPORTANT********IMPORTANT***********************************************************!
        !!*** Next two lines copy the right TOOL and WOBJ definitions from MAIN program...                      *!
        !!*** (user can define is own directly in this module and DELETE THE NEXT TWO LINES)                    *!
        !!***IMPORTANT******IMPORTANT********IMPORTANT***********************************************************!
        
		TestTool:=Ref_Pin;
        TestBase:=TestBase;
        
        !!***CalBase must be a copy of a valid user frame taught on the AUTO-CAL calibration target!
        CalBase:=acaltargetV2;
        
		CurPos:=CRobT(\Tool:=TestTool\WObj:=TestBase);
        !!Next instruction simply selects the proper active tool and WObj (stays in current position)
        MoveL CurPos, v100, fine, TestTool\WObj:=TestBase;
        
        !!***IMPORTANT******IMPORTANT********IMPORTANT***********************************************************!
        !!*** Pause at start to allow user to teach ALL positions based on his installation                     *!
        !!***IMPORTANT******IMPORTANT********IMPORTANT***********************************************************!
        TPWrite "Make sure to teach all test points before continuing.";
        Stop;
        
        !!CLEAR position above calibration target - TEACH TO HAVE PROPER TOOL CLEARANCE TO GO TO THE CALIBRATION START POSITION AND TO THE TEST PART
        MoveL [[63.77,-36.37,122.48],[0.904292,0.00385198,0.0162107,0.42659],[-1,2,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v100, fine, TestTool\WObj:=TestBase;
        
        !!Next calls are based on the definition of the WObj TestBase at the origin of the calibration target with X and Y following target edges (X is the long edge)
        !!The tool TestTool must also be properly calibrated with X+ going toward laser-camera and Z+ going up
        IF NOT ASFMu_Initialize("192.168.2.3",2,FALSE,FALSE,TRUE,TestTool,TestBase) THEN
            TPWrite "Can't connect to ASFM module on vision controller";
        ENDIF
        Close LogTestASFM;
        Open "HOME:", \File:="LogTestASFM.txt", LogTestASFM, \Append;
        Write LogTestASFM, CDate() + "; " + CTime() + "- Test ASFM routine started", \NoNewLine;
        Write LogTestASFM, "      ";
        
        !All positions must be taught to take measurements on a test part (see proposed test part in user manual)!
        
        !! Mode0 - LAP Edge Right On Left plate orientation;
        M0P1:=[[16.95,-43.13,12.37],[0.904324,0.0038543,0.0162105,0.426523],[-1,2,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
        !! Mode1 - LAP Edge Right On Left plate orientation;
        M1P1:=[[16.95,-43.13,12.37],[0.904323,0.00385478,0.0162091,0.426524],[-1,2,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
        !! Mode3 - LAP Edge Right On Left plate orientation; X close
        M3P1:=[[-11.78,-43.32,12.58],[0.904313,0.00384288,0.0162159,0.426546],[-1,2,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
        !! Mode3 - LAP Edge Right On Left plate orientation; X far
        M3P2:=[[51.24,-42.99,12.12],[0.904304,0.00383855,0.0162152,0.426565],[-1,2,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
        !! Mode5 and Mode9 - Corner Edge 1 - LAP Edge Right On Left plate orientation; X far
        M5P1:=M3P2;
        !! Mode5 and Mode9 - Corner Edge 1 - LAP Edge Right On Left plate orientation; X close
        M5P2:=M3P1;
        !! Mode5 and Mode9 - Corner Edge 2 - LAP Edge Left On Right plate orientation; X close
        M5P3:=[[-35.31,-23.64,12.58],[0.904307,0.00385365,0.0162068,0.426559],[-1,2,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
        !! Mode4 and Mode6 - Corner Edge 1 - LAP Edge Right On Left plate orientation; X far
        M4P1:=M5P1;
        !! Mode4 and Mode6 - Corner Edge 1 - LAP Edge Right On Left plate orientation; X close
        M4P2:=M5P2;
        !! Mode4 and Mode6 - Corner Edge 2 - LAP Edge Left On Right plate orientation; X close
        M4P3:=M5P3;
        !! Mode4 and Mode6 - Corner Edge 2 - LAP Edge Left On Right plate orientation; X far
        M4P4:=[[-35.12,36.43,12.00],[0.904312,0.00385779,0.016209,0.426549],[-1,2,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
        !! Mode8 - Circle Edge 1 - LAP Edge Left On Right plate orientation; X1
        M8P1:=[[20.62,-9.53,21.88],[0.890013,0.0860946,-0.161307,0.417666],[-1,2,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
        !! Mode8 - Circle Edge 1 - LAP Edge Left On Right plate orientation; X2
        M8P2:=[[31.72,3.24,21.67],[0.890014,0.0860908,-0.161302,0.417667],[-1,2,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
        !! Mode8 - Circle Edge 2 - LAP Edge Right On Left plate orientation; X1
        M8P3:=[[7.01,15.69,21.72],[0.890022,0.0860726,-0.161294,0.417657],[-1,2,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
        
        !!Calls to test functions below...
        !!To skip a test, simply comment out the line corresponding to that test
        
        !!This is required only once to perform camera to tool calibration (line can be commented out after)
        !CalibrateFC; 
        !!Test GetPoint (one point)
        Mode0;  
        !!Test GetPointOffset (one point)
        Mode1;  
        !!Test Get2PointsOffsets (two points)
        Mode3;  
        !!Test GetCorner3P (three points with angle)
        Mode5;  
        !!Test GetCorner3P (three points with angle and distance)
        Mode9;  
        !!Test GetCorner4P (four points)
        Mode4;  
        !!Test GetCorner4P (four points and distance)
        Mode6;  
        !!Test GetCircle (three points)
        Mode8;  
        
        Write LogTestASFM, CDate() + "; " + CTime() + "- Test ASFM routine completed", \NoNewLine;
        Write LogTestASFM, "      ";
        Close LogTestASFM;
        TPWrite "Test finished. Press START to exit test function.";
        Stop;
 	ENDPROC
    
    
    PROC Mode0()
        !---- Test Mode 0 - GetPoint
        MoveL M0P1, v200, fine, TestTool\WObj:=TestBase;
        WaitTime 1;
        MData:=ASFMu_GetPoint(420,5);
        IF MData.Status < 0 THEN
            TPWrite "Get point error in ASFM module.";
            Stop;
        ELSE
            !Expected output: X=value on the ruler where the laser stripe take the measurement; Y=0, Z=0
            Write LogTestASFM, CDate() + "; " + CTime() + "-Mode 0 test completed", \NoNewLine;
            Write LogTestASFM, "      ";
            Write LogTestASFM, "PointData X="+ ValToStr(MData.tx) + " Y=" + ValToStr(MData.ty) + " Z=" + ValToStr(MData.tz), \NoNewLine;
            Write LogTestASFM, "      ";
        ENDIF
        
    ENDPROC
    
    PROC Mode1()
        !---- Test Mode 1 - GetPointOffset
        
        MoveL M1P1, v200, fine, TestTool\WObj:=TestBase;
        WaitTime 1;
        !Acquires reference point on LAP
        MData:=ASFMu_GetPointOffset(0,1,420,5);
        IF MData.Status < 0 THEN
            TPWrite "Get point offset reference measurement error in ASFM module.";
            Stop;
        ENDIF
        
        !If test is made on a movable part, part can be moved during this wait delay
        WaitTime 5;
        
        !Acquires current point on LAP
        MData:=ASFMu_GetPointOffset(1,1,420,5);
        IF MData.Status < 0 THEN
            TPWrite "Get point offset measurement error in ASFM module.";
            Stop;
        ELSE
            !Expected output: X=0; Y=0; Z=0 if on target (supposed it is fixed)
            !If test done on movable part, Y and Z values should reflect movement; If part is rotated a small X offset is also possible
            Write LogTestASFM, CDate() + "; " + CTime() + "-Mode 1 test completed", \NoNewLine;
            Write LogTestASFM, "      ";
            Write LogTestASFM, "OffsetData X="+ ValToStr(MData.tx) + " Y=" + ValToStr(MData.ty) + " Z=" + ValToStr(MData.tz), \NoNewLine;
            Write LogTestASFM, "      ";
        ENDIF
        
    ENDPROC
    
    PROC Mode3()
        !---- Test Mode 3 - Get2PointsOffset
        
        MoveL M3P1, v200, fine, TestTool\WObj:=TestBase;
        WaitTime 1;
        !Acquires first reference point on LAP
        MData:=ASFMu_Get2PointsOff1(0,1,420,5);
        IF MData.Status < 0 THEN
            TPWrite "Get two points offset reference measurement 1 error in ASFM module.";
            Stop;
        ENDIF
        
        MoveL M3P2, v200, fine, TestTool\WObj:=TestBase;
        WaitTime 1;
        !Acquires second reference point on LAP
        MData:=ASFMu_Get2PointsOff2_1(0,1,420,5);
        IF MData.Status < 0 THEN
            TPWrite "Get two points offset reference measurement 2 error in ASFM module.";
            Stop;
        ENDIF
        
        !If test is made on a movable part, part can be moved during this wait delay
        WaitTime 5;
        
        ! Next point must be with laser stripe on LAP on side of calibration target (or on any movable LAP joint of 2 mm thickness)
        MoveL M3P1, v200, fine, TestTool\WObj:=TestBase;
        WaitTime 1;
        !Acquires first measurement point on LAP
        MData:=ASFMu_Get2PointsOff1(1,1,420,5);
        IF MData.Status < 0 THEN
            TPWrite "Get two points offset measurement 1 error in ASFM module.";
            Stop;
        ENDIF
        
        MoveL M3P2, v200, fine, TestTool\WObj:=TestBase;
        WaitTime 1;
        !Acquires second measurement point on LAP
        MData:=ASFMu_Get2PointsOff2_1(1,1,420,5);
        IF MData.Status < 0 THEN
            TPWrite "Get two points offset measurement 2 error in ASFM module.";
            Stop;
        ELSE
            !Expected output: X=0; Y=0; Z=0 if on target (supposed it is fixed)
            !If test done on movable part, Y and Z values should reflect movement; If part is rotated a small X offset is also possible
            Write LogTestASFM, CDate() + "; " + CTime() + "-Mode 3 test completed", \NoNewLine;
            Write LogTestASFM, "      ";
            Write LogTestASFM, "DualOffsetData1 X="+ ValToStr(MData.tx) + " Y=" + ValToStr(MData.ty) + " Z=" + ValToStr(MData.tz), \NoNewLine;
            Write LogTestASFM, "      ";
            MData:=ASFMu_Get2PointsOff2_2(1,1,420,5);
            IF MData.Status < 0 THEN
                TPWrite "Get two points offset measurement 2 error in ASFM module.";
                Stop;
            ELSE
                !Expected output: X=0; Y=0; Z=0 if on target (supposed it is fixed)
                !If test done on movable part, Y and Z values should reflect movement; If part is rotated a small X offset is also possible
                Write LogTestASFM, "DualOffsetData2 X="+ ValToStr(MData.tx) + " Y=" + ValToStr(MData.ty) + " Z=" + ValToStr(MData.tz), \NoNewLine;
                Write LogTestASFM, "      ";
            ENDIF
        ENDIF
    ENDPROC
    
    PROC Mode5()
        !---- Test Mode 5 - GetCorner with three points and an angle
        
        MoveL M5P1, v200, fine, TestTool\WObj:=TestBase;
        WaitTime 1;
        !Acquires first point
        MData:=ASFMu_GetCorner3P1(1,420,5,90);
        IF MData.Status < 0 THEN
            TPWrite "Get corner 3P measurement 1 error in ASFM module.";
            Stop;
        ENDIF        
        
        MoveL M5P2, v200, fine, TestTool\WObj:=TestBase;
        WaitTime 1;
        !Acquires second point
        MData:=ASFMu_GetCorner3P2(420,5);
        IF MData.Status < 0 THEN
            TPWrite "Get corner 3P measurement 2 error in ASFM module.";
            Stop;
        ENDIF        
        
        MoveL M5P3, v200, fine, TestTool\WObj:=TestBase;
        WaitTime 1;
        !Acquires third point
        MData:=ASFMu_GetCorner3P3_1(421,5);
        IF MData.Status < 0 THEN
            TPWrite "Get corner 3P measurement 3 error in ASFM module.";
            Stop;
        ELSE
            !Expected output: X=36.8; Y=110; Z=4 on target + geometric data about measurement 1
            Write LogTestASFM, CDate() + "; " + CTime() + "-Mode 5 test completed", \NoNewLine;
            Write LogTestASFM, "      ";
            Write LogTestASFM, "Corner3P_1 X="+ ValToStr(MData.tx) + " Y=" + ValToStr(MData.ty) + " Z=" + ValToStr(MData.tz), \NoNewLine;
            Write LogTestASFM, "      ";
            Write LogTestASFM, "Corner3P_1 A="+ ValToStr(MData.oa) + " B=" + ValToStr(MData.ob) + " C=" + ValToStr(MData.oc), \NoNewLine;
            Write LogTestASFM, "      ";
            Write LogTestASFM, "Corner3P_1 Ar="+ ValToStr(MData.ar) + " Gp=" + ValToStr(MData.gp) + " Ms=" + ValToStr(MData.ms), \NoNewLine;
            Write LogTestASFM, "      ";
            MData:=ASFMu_GetCorner3P3_2();
            IF MData.Status < 0 THEN
                TPWrite "Get corner 3P get data part 2 error in ASFM module.";
                Stop;
            ELSE
                !Part 2 only contains geometric data of measurement 2
                Write LogTestASFM, "Corner3P_2 X="+ ValToStr(MData.tx) + " Y=" + ValToStr(MData.ty) + " Z=" + ValToStr(MData.tz), \NoNewLine;
                Write LogTestASFM, "      ";
                Write LogTestASFM, "Corner3P_2 A="+ ValToStr(MData.oa) + " B=" + ValToStr(MData.ob) + " C=" + ValToStr(MData.oc), \NoNewLine;
                Write LogTestASFM, "      ";
                Write LogTestASFM, "Corner3P_2 Ar="+ ValToStr(MData.ar) + " Gp=" + ValToStr(MData.gp) + " Ms=" + ValToStr(MData.ms), \NoNewLine;
                Write LogTestASFM, "      ";
                MData:=ASFMu_GetCorner3P3_3();
                IF MData.Status < 0 THEN
                TPWrite "Get corner 3P get data part 2 error in ASFM module.";
                Stop;
                ELSE
                    !Part 3 only contains geometric data of measurement 3
                    Write LogTestASFM, "Corner3P_3 X="+ ValToStr(MData.tx) + " Y=" + ValToStr(MData.ty) + " Z=" + ValToStr(MData.tz), \NoNewLine;
                    Write LogTestASFM, "      ";
                    Write LogTestASFM, "Corner3P_3 A="+ ValToStr(MData.oa) + " B=" + ValToStr(MData.ob) + " C=" + ValToStr(MData.oc), \NoNewLine;
                    Write LogTestASFM, "      ";
                    Write LogTestASFM, "Corner3P_3 Ar="+ ValToStr(MData.ar) + " Gp=" + ValToStr(MData.gp) + " Ms=" + ValToStr(MData.ms), \NoNewLine;
                    Write LogTestASFM, "      ";
                ENDIF
            ENDIF
        ENDIF        
    ENDPROC
    
    PROC Mode9()
        !---- Test Mode 9 - GetCorner with three points and an angle (with distance along axis 1 of corner)
        
        MoveL M5P1, v200, fine, TestTool\WObj:=TestBase;
        WaitTime 1;
        !Acquires first point
        MData:=ASFMu_GetCorner3P1_D(1,420,5,90,50);
        IF MData.Status < 0 THEN
            TPWrite "Get corner 3P measurement 1 error in ASFM module.";
            Stop;
        ENDIF        
        
        MoveL M5P2, v200, fine, TestTool\WObj:=TestBase;
        WaitTime 1;
        !Acquires second point
        MData:=ASFMu_GetCorner3P2(420,5);
        IF MData.Status < 0 THEN
            TPWrite "Get corner 3P measurement 2 error in ASFM module.";
            Stop;
        ENDIF        
        
        MoveL M5P3, v200, fine, TestTool\WObj:=TestBase;
        WaitTime 1;
        !Acquires third point
        MData:=ASFMu_GetCorner3P3_1(421,5);
        IF MData.Status < 0 THEN
            TPWrite "Get corner 3P measurement 3 error in ASFM module.";
            Stop;
        ELSE
            !Expected output: X=36.8; Y=110; Z=4 on target + geometric data about measurement 1
            Write LogTestASFM, CDate() + "; " + CTime() + "-Mode 9 test completed", \NoNewLine;
            Write LogTestASFM, "      ";
            Write LogTestASFM, "Corner3P_1 X="+ ValToStr(MData.tx) + " Y=" + ValToStr(MData.ty) + " Z=" + ValToStr(MData.tz), \NoNewLine;
            Write LogTestASFM, "      ";
            Write LogTestASFM, "Corner3P_1 A="+ ValToStr(MData.oa) + " B=" + ValToStr(MData.ob) + " C=" + ValToStr(MData.oc), \NoNewLine;
            Write LogTestASFM, "      ";
            Write LogTestASFM, "Corner3P_1 Ar="+ ValToStr(MData.ar) + " Gp=" + ValToStr(MData.gp) + " Ms=" + ValToStr(MData.ms), \NoNewLine;
            Write LogTestASFM, "      ";
            MData:=ASFMu_GetCorner3P3_2D();
            IF MData.Status < 0 THEN
                TPWrite "Get corner 3P get data part 2 error in ASFM module.";
                Stop;
            ELSE
                !Expected output: X=36.8; Y=110; Z=4 on target + geometric data about measurement 2
                Write LogTestASFM, "Corner3P_2 X="+ ValToStr(MData.tx) + " Y=" + ValToStr(MData.ty) + " Z=" + ValToStr(MData.tz), \NoNewLine;
                Write LogTestASFM, "      ";
                Write LogTestASFM, "Corner3P_2 A="+ ValToStr(MData.oa) + " B=" + ValToStr(MData.ob) + " C=" + ValToStr(MData.oc), \NoNewLine;
                Write LogTestASFM, "      ";
                Write LogTestASFM, "Corner3P_2 Ar="+ ValToStr(MData.ar) + " Gp=" + ValToStr(MData.gp) + " Ms=" + ValToStr(MData.ms), \NoNewLine;
                Write LogTestASFM, "      ";
                MData:=ASFMu_GetCorner3P3_3();
                IF MData.Status < 0 THEN
                TPWrite "Get corner 3P get data part 2 error in ASFM module.";
                Stop;
                ELSE
                    !Part 3 only contains geometric data of measurement 3
                    Write LogTestASFM, "Corner3P_3 X="+ ValToStr(MData.tx) + " Y=" + ValToStr(MData.ty) + " Z=" + ValToStr(MData.tz), \NoNewLine;
                    Write LogTestASFM, "      ";
                    Write LogTestASFM, "Corner3P_3 A="+ ValToStr(MData.oa) + " B=" + ValToStr(MData.ob) + " C=" + ValToStr(MData.oc), \NoNewLine;
                    Write LogTestASFM, "      ";
                    Write LogTestASFM, "Corner3P_3 Ar="+ ValToStr(MData.ar) + " Gp=" + ValToStr(MData.gp) + " Ms=" + ValToStr(MData.ms), \NoNewLine;
                    Write LogTestASFM, "      ";
                ENDIF
            ENDIF
        ENDIF        
    ENDPROC
        
    PROC Mode4()
        !---- Test Mode 4 - GetCorner with four points
        
        MoveL M4P1, v200, fine, TestTool\WObj:=TestBase;
        WaitTime 1;
        !Acquires first point
        MData:=ASFMu_GetCorner4P1(1,420,5,1);
        IF MData.Status < 0 THEN
            TPWrite "Get corner 4P measurement 1 error in ASFM module.";
            Stop;
        ENDIF        
        
        MoveL M4P2, v200, fine, TestTool\WObj:=TestBase;
        WaitTime 1;
        !Acquires second point
        MData:=ASFMu_GetCorner4P2(420,5);
        IF MData.Status < 0 THEN
            TPWrite "Get corner 4P measurement 2 error in ASFM module.";
            Stop;
        ENDIF        
        
        MoveL M4P3, v200, fine, TestTool\WObj:=TestBase;
        WaitTime 1;
        MData:=ASFMu_GetCorner4P3(421,5);
        IF MData.Status < 0 THEN
            TPWrite "Get corner 4P measurement 3 error in ASFM module.";
            Stop;
        ENDIF       
        
        MoveL M4P4, v200, fine, TestTool\WObj:=TestBase;
        WaitTime 1;
        !Acquires fourth point
        MData:=ASFMu_GetCorner4P4_1(421,5);
        IF MData.Status < 0 THEN
            TPWrite "Get corner 4P measurement 4 error in ASFM module.";
            Stop;
        ELSE
            !Expected output: X=36.8; Y=110; Z=4 on target + geometric data about measurement 1
            Write LogTestASFM, CDate() + "; " + CTime() + "-Mode 4 test completed", \NoNewLine;
            Write LogTestASFM, "      ";
            Write LogTestASFM, "Corner4P_1 X="+ ValToStr(MData.tx) + " Y=" + ValToStr(MData.ty) + " Z=" + ValToStr(MData.tz), \NoNewLine;
            Write LogTestASFM, "      ";
            Write LogTestASFM, "Corner4P_1 A="+ ValToStr(MData.oa) + " B=" + ValToStr(MData.ob) + " C=" + ValToStr(MData.oc), \NoNewLine;
            Write LogTestASFM, "      ";
            Write LogTestASFM, "Corner4P_1 Ar="+ ValToStr(MData.ar) + " Gp=" + ValToStr(MData.gp) + " Ms=" + ValToStr(MData.ms), \NoNewLine;
            Write LogTestASFM, "      ";
            MData:=ASFMu_GetCorner4P4_2();
            IF MData.Status < 0 THEN
                TPWrite "Get corner 4P get data part 2 error in ASFM module.";
                Stop;
            ELSE
                !Part 2 only contains geometric data of measurement 2
                Write LogTestASFM, "Corner4P_2 X="+ ValToStr(MData.tx) + " Y=" + ValToStr(MData.ty) + " Z=" + ValToStr(MData.tz), \NoNewLine;
                Write LogTestASFM, "      ";
                Write LogTestASFM, "Corner4P_2 A="+ ValToStr(MData.oa) + " B=" + ValToStr(MData.ob) + " C=" + ValToStr(MData.oc), \NoNewLine;
                Write LogTestASFM, "      ";
                Write LogTestASFM, "Corner4P_2 Ar="+ ValToStr(MData.ar) + " Gp=" + ValToStr(MData.gp) + " Ms=" + ValToStr(MData.ms), \NoNewLine;
                Write LogTestASFM, "      ";
                MData:=ASFMu_GetCorner4P4_3();
                IF MData.Status < 0 THEN
                TPWrite "Get corner 4P get data part 3 error in ASFM module.";
                Stop;
                ELSE
                    !Part 3 only contains geometric data of measurement 3
                    Write LogTestASFM, "Corner4P_3 X="+ ValToStr(MData.tx) + " Y=" + ValToStr(MData.ty) + " Z=" + ValToStr(MData.tz), \NoNewLine;
                    Write LogTestASFM, "      ";
                    Write LogTestASFM, "Corner4P_3 A="+ ValToStr(MData.oa) + " B=" + ValToStr(MData.ob) + " C=" + ValToStr(MData.oc), \NoNewLine;
                    Write LogTestASFM, "      ";
                    Write LogTestASFM, "Corner4P_3 Ar="+ ValToStr(MData.ar) + " Gp=" + ValToStr(MData.gp) + " Ms=" + ValToStr(MData.ms), \NoNewLine;
                    Write LogTestASFM, "      ";
                    MData:=ASFMu_GetCorner4P4_4();
                    IF MData.Status < 0 THEN
                        TPWrite "Get corner 4P get data part 4 error in ASFM module.";
                        Stop;
                    ELSE
                        !Part 4 only contains geometric data of measurement 4
                        Write LogTestASFM, "Corner4P_4 X="+ ValToStr(MData.tx) + " Y=" + ValToStr(MData.ty) + " Z=" + ValToStr(MData.tz), \NoNewLine;
                        Write LogTestASFM, "      ";
                        Write LogTestASFM, "Corner4P_4 A="+ ValToStr(MData.oa) + " B=" + ValToStr(MData.ob) + " C=" + ValToStr(MData.oc), \NoNewLine;
                        Write LogTestASFM, "      ";
                        Write LogTestASFM, "Corner4P_4 Ar="+ ValToStr(MData.ar) + " Gp=" + ValToStr(MData.gp) + " Ms=" + ValToStr(MData.ms), \NoNewLine;
                        Write LogTestASFM, "      ";
                    ENDIF
                ENDIF
            ENDIF
        ENDIF        
    ENDPROC
        
    PROC Mode6()
        !---- Test Mode 6 - GetCorner with four points (with distance)
        
        MoveL M4P1, v200, fine, TestTool\WObj:=TestBase;
        WaitTime 1;
        !Acquires first point
        MData:=ASFMu_GetCorner4P1_D(1,420,5,1,50);
        IF MData.Status < 0 THEN
            TPWrite "Get corner 4P measurement 1 error in ASFM module.";
            Stop;
        ENDIF        
        
        MoveL M4P2, v200, fine, TestTool\WObj:=TestBase;
        WaitTime 1;
        !Acquires second point
        MData:=ASFMu_GetCorner4P2(420,5);
        IF MData.Status < 0 THEN
            TPWrite "Get corner 4P measurement 2 error in ASFM module.";
            Stop;
        ENDIF        
        
        MoveL M4P3, v200, fine, TestTool\WObj:=TestBase;
        WaitTime 1;
        MData:=ASFMu_GetCorner4P3(421,5);
        IF MData.Status < 0 THEN
            TPWrite "Get corner 4P measurement 3 error in ASFM module.";
            Stop;
        ENDIF       
        
        MoveL M4P4, v200, fine, TestTool\WObj:=TestBase;
        WaitTime 1;
        !Acquires fourth point
        MData:=ASFMu_GetCorner4P4_1(421,5);
        IF MData.Status < 0 THEN
            TPWrite "Get corner 4P measurement 4 error in ASFM module.";
            Stop;
        ELSE
            !Expected output: X=36.8; Y=110; Z=4 on target + geometric data about measurement 1
            Write LogTestASFM, CDate() + "; " + CTime() + "-Mode 6 test completed", \NoNewLine;
            Write LogTestASFM, "      ";
            Write LogTestASFM, "Corner4P_1 X="+ ValToStr(MData.tx) + " Y=" + ValToStr(MData.ty) + " Z=" + ValToStr(MData.tz), \NoNewLine;
            Write LogTestASFM, "      ";
            Write LogTestASFM, "Corner4P_1 A="+ ValToStr(MData.oa) + " B=" + ValToStr(MData.ob) + " C=" + ValToStr(MData.oc), \NoNewLine;
            Write LogTestASFM, "      ";
            Write LogTestASFM, "Corner4P_1 Ar="+ ValToStr(MData.ar) + " Gp=" + ValToStr(MData.gp) + " Ms=" + ValToStr(MData.ms), \NoNewLine;
            Write LogTestASFM, "      ";
            MData:=ASFMu_GetCorner4P4_2D();
            IF MData.Status < 0 THEN
                TPWrite "Get corner 4P get data part 2 error in ASFM module.";
                Stop;
            ELSE
                !Expected output: X=36.8; Y=110; Z=4 on target + geometric data about measurement 2
                Write LogTestASFM, "Corner4P_2 X="+ ValToStr(MData.tx) + " Y=" + ValToStr(MData.ty) + " Z=" + ValToStr(MData.tz), \NoNewLine;
                Write LogTestASFM, "      ";
                Write LogTestASFM, "Corner4P_2 A="+ ValToStr(MData.oa) + " B=" + ValToStr(MData.ob) + " C=" + ValToStr(MData.oc), \NoNewLine;
                Write LogTestASFM, "      ";
                Write LogTestASFM, "Corner4P_2 Ar="+ ValToStr(MData.ar) + " Gp=" + ValToStr(MData.gp) + " Ms=" + ValToStr(MData.ms), \NoNewLine;
                Write LogTestASFM, "      ";
                MData:=ASFMu_GetCorner4P4_3();
                IF MData.Status < 0 THEN
                    TPWrite "Get corner 4P get data part 3 error in ASFM module.";
                    Stop;
                ELSE
                    !Part 3 only contains geometric data of measurement 3
                    Write LogTestASFM, "Corner4P_3 X="+ ValToStr(MData.tx) + " Y=" + ValToStr(MData.ty) + " Z=" + ValToStr(MData.tz), \NoNewLine;
                    Write LogTestASFM, "      ";
                    Write LogTestASFM, "Corner4P_3 A="+ ValToStr(MData.oa) + " B=" + ValToStr(MData.ob) + " C=" + ValToStr(MData.oc), \NoNewLine;
                    Write LogTestASFM, "      ";
                    Write LogTestASFM, "Corner4P_3 Ar="+ ValToStr(MData.ar) + " Gp=" + ValToStr(MData.gp) + " Ms=" + ValToStr(MData.ms), \NoNewLine;
                    Write LogTestASFM, "      ";
                    MData:=ASFMu_GetCorner4P4_4();
                    IF MData.Status < 0 THEN
                        TPWrite "Get corner 4P get data part 4 error in ASFM module.";
                        Stop;
                    ELSE
                        !Part 4 only contains geometric data of measurement 4
                        Write LogTestASFM, "Corner4P_4 X="+ ValToStr(MData.tx) + " Y=" + ValToStr(MData.ty) + " Z=" + ValToStr(MData.tz), \NoNewLine;
                        Write LogTestASFM, "      ";
                        Write LogTestASFM, "Corner4P_4 A="+ ValToStr(MData.oa) + " B=" + ValToStr(MData.ob) + " C=" + ValToStr(MData.oc), \NoNewLine;
                        Write LogTestASFM, "      ";
                        Write LogTestASFM, "Corner4P_4 Ar="+ ValToStr(MData.ar) + " Gp=" + ValToStr(MData.gp) + " Ms=" + ValToStr(MData.ms), \NoNewLine;
                        Write LogTestASFM, "      ";
                    ENDIF
                ENDIF
            ENDIF
        ENDIF        
    ENDPROC
    
    PROC Mode8()
        !---- Test Mode 8 - GetCircle with three points
        
        MoveL M8P1, v200, fine, TestTool\WObj:=TestBase;
        WaitTime 1;
        !Acquires first point
        MData:=ASFMu_GetCircleP1(1,422,10);
        IF MData.Status < 0 THEN
            TPWrite "Get circle measurement 1 error in ASFM module.";
            Stop;
        ENDIF        
        
        MoveL M8P2, v200, fine, TestTool\WObj:=TestBase;
        WaitTime 1;
        !Acquires second point
        MData:=ASFMu_GetCircleP2(422,10);
        IF MData.Status < 0 THEN
            TPWrite "Get circle measurement 2 error in ASFM module.";
            Stop;
        ENDIF        
        
        MoveL M8P3, v200, fine, TestTool\WObj:=TestBase;
        WaitTime 1;
        !Acquires third point and part 1 of measured data
        MData:=ASFMu_GetCircleP3_1(423,10);
        IF MData.Status < 0 THEN
            TPWrite "Get circle measurement 3 error in ASFM module.";
            Stop;
        ELSE
            Write LogTestASFM, CDate() + "; " + CTime() + "-Mode 8 test completed", \NoNewLine;
            Write LogTestASFM, "      ";
            Write LogTestASFM, "Circle CX="+ ValToStr(MData.tx) + " CY=" + ValToStr(MData.ty) + " CZ=" + ValToStr(MData.tz), \NoNewLine;
            Write LogTestASFM, "      ";
            Write LogTestASFM, "Circle A="+ ValToStr(MData.oa) + " B=" + ValToStr(MData.ob) + " C=" + ValToStr(MData.oc), \NoNewLine;
            Write LogTestASFM, "      ";
            Write LogTestASFM, "Circle M1 Ar="+ ValToStr(MData.ar) + " Gp=" + ValToStr(MData.gp) + " Ms=" + ValToStr(MData.ms), \NoNewLine;
            Write LogTestASFM, "      ";
            MData:=ASFMu_GetCircleP3_2();
            IF MData.Status < 0 THEN
                TPWrite "Get circle get data part 2 error in ASFM module.";
                Stop;
            ELSE
                !Part 2 of meassured data
                Write LogTestASFM, "Circle NX="+ ValToStr(MData.tx) + " NY=" + ValToStr(MData.ty) + " NZ=" + ValToStr(MData.tz), \NoNewLine;
                Write LogTestASFM, "      ";
                Write LogTestASFM, "Circle OA="+ ValToStr(MData.oa) + " OB=" + ValToStr(MData.ob) + " NoData=" + ValToStr(MData.oc), \NoNewLine;
                Write LogTestASFM, "      ";
                Write LogTestASFM, "Circle M2 Ar="+ ValToStr(MData.ar) + " Gp=" + ValToStr(MData.gp) + " Ms=" + ValToStr(MData.ms), \NoNewLine;
                Write LogTestASFM, "      ";
                MData:=ASFMu_GetCircleP3_3();
                IF MData.Status < 0 THEN
                TPWrite "Get circle get data part 2 error in ASFM module.";
                Stop;
                ELSE
                    !Part 3 of measured data
                    Write LogTestASFM, "Circle R="+ ValToStr(MData.tx) + " NoData=" + ValToStr(MData.ty) + " NoData=" + ValToStr(MData.tz), \NoNewLine;
                    Write LogTestASFM, "      ";
                    Write LogTestASFM, "Circle NoData="+ ValToStr(MData.oa) + " NoData=" + ValToStr(MData.ob) + " NoData=" + ValToStr(MData.oc), \NoNewLine;
                    Write LogTestASFM, "      ";
                    Write LogTestASFM, "Circle M3 Ar="+ ValToStr(MData.ar) + " Gp=" + ValToStr(MData.gp) + " Ms=" + ValToStr(MData.ms), \NoNewLine;
                    Write LogTestASFM, "      ";
                ENDIF
            ENDIF
        ENDIF        
    ENDPROC
ENDMODULE