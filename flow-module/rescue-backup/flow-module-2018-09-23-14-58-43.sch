EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:valveteam
LIBS:flow-module-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Valve Control Flow Circuitry"
Date "2018-05-22"
Rev "1"
Comp "Valve Team"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_01X06 P3
U 1 1 5B04304C
P 1000 3000
F 0 "P3" H 1000 3350 50  0000 C CNN
F 1 "MOLEX_01X06" V 1100 3000 50  0000 C CNN
F 2 "ValveTeam:Molex_KK-6410-06_06x2.54mm_Straight" H 1000 3000 50  0001 C CNN
F 3 "" H 1000 3000 50  0000 C CNN
	1    1000 3000
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P5
U 1 1 5B043210
P 5650 3100
F 0 "P5" H 5650 3250 50  0000 C CNN
F 1 "TERM_01X02" V 5750 3100 50  0000 C CNN
F 2 "ValveTeam:TE_TERM" H 5650 3100 50  0001 C CNN
F 3 "" H 5650 3100 50  0000 C CNN
	1    5650 3100
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 5B0432BB
P 950 850
F 0 "P1" H 950 1000 50  0000 C CNN
F 1 "TERM_01X02" V 1050 850 50  0000 C CNN
F 2 "ValveTeam:TE_TERM" H 950 850 50  0001 C CNN
F 3 "" H 950 850 50  0000 C CNN
	1    950  850 
	-1   0    0    -1  
$EndComp
$Comp
L Earth #PWR01
U 1 1 5B043C8F
P 1150 900
F 0 "#PWR01" H 1150 650 50  0001 C CNN
F 1 "Earth" H 1150 750 50  0001 C CNN
F 2 "" H 1150 900 50  0000 C CNN
F 3 "" H 1150 900 50  0000 C CNN
	1    1150 900 
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR02
U 1 1 5B043F32
P 1150 800
F 0 "#PWR02" H 1150 650 50  0001 C CNN
F 1 "VCC" H 1150 950 50  0000 C CNN
F 2 "" H 1150 800 50  0000 C CNN
F 3 "" H 1150 800 50  0000 C CNN
	1    1150 800 
	1    0    0    -1  
$EndComp
Text Notes 1250 700  0    60   ~ 0
From Power Supply
$Comp
L VAA #PWR03
U 1 1 5B045A4D
P 1200 3250
F 0 "#PWR03" H 1200 3100 50  0001 C CNN
F 1 "VAA" H 1200 3400 50  0000 C CNN
F 2 "" H 1200 3250 50  0000 C CNN
F 3 "" H 1200 3250 50  0000 C CNN
	1    1200 3250
	-1   0    0    1   
$EndComp
$Comp
L Earth #PWR04
U 1 1 5B045A74
P 1200 2750
F 0 "#PWR04" H 1200 2500 50  0001 C CNN
F 1 "Earth" H 1200 2600 50  0001 C CNN
F 2 "" H 1200 2750 50  0000 C CNN
F 3 "" H 1200 2750 50  0000 C CNN
	1    1200 2750
	0    -1   -1   0   
$EndComp
$Comp
L LMD18201T H2
U 1 1 5B043BC1
P 3250 2900
F 0 "H2" H 3450 3300 60  0000 C CNN
F 1 "LMD18201T" H 3000 3300 60  0000 C CNN
F 2 "ValveTeam:TO-220-11" H 3250 2950 60  0001 C CNN
F 3 "" H 3250 2950 60  0000 C CNN
	1    3250 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2950 3700 3050
Wire Wire Line
	3700 2950 3850 2950
Connection ~ 3700 2950
$Comp
L Earth #PWR05
U 1 1 5B043D56
P 3850 2950
F 0 "#PWR05" H 3850 2700 50  0001 C CNN
F 1 "Earth" H 3850 2800 50  0001 C CNN
F 2 "" H 3850 2950 50  0000 C CNN
F 3 "" H 3850 2950 50  0000 C CNN
	1    3850 2950
	0    -1   -1   0   
$EndComp
Text Notes 5900 3050 0    60   ~ 0
To Valve\n
Text GLabel 4100 3550 2    60   Input ~ 0
Output1
Text GLabel 4100 2750 2    60   Input ~ 0
Output2
Text GLabel 5450 3050 0    60   Input ~ 0
Output2
Text GLabel 5450 3150 0    60   Input ~ 0
Output1
$Comp
L VCC #PWR06
U 1 1 5B0448D2
P 3700 3150
F 0 "#PWR06" H 3700 3000 50  0001 C CNN
F 1 "VCC" H 3700 3300 50  0000 C CNN
F 2 "" H 3700 3150 50  0000 C CNN
F 3 "" H 3700 3150 50  0000 C CNN
	1    3700 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 2750 4100 2750
Wire Wire Line
	3700 3550 4100 3550
$Comp
L C C1
U 1 1 5B045DA5
P 3850 2650
F 0 "C1" V 3700 2750 50  0000 L CNN
F 1 "C" V 3700 2550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3888 2500 50  0001 C CNN
F 3 "" H 3850 2650 50  0000 C CNN
	1    3850 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 2750 4000 2650
Connection ~ 4000 2750
$Comp
L C C2
U 1 1 5B0461EC
P 3850 3650
F 0 "C2" V 3700 3750 50  0000 L CNN
F 1 "C" V 3700 3550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3888 3500 50  0001 C CNN
F 3 "" H 3850 3650 50  0000 C CNN
	1    3850 3650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 3650 4000 3550
Connection ~ 4000 3550
Text GLabel 1200 2950 2    60   Input ~ 0
PWM
Text GLabel 3900 3250 2    60   Input ~ 0
PWM
Wire Wire Line
	3700 3250 3900 3250
Text GLabel 4200 3350 2    60   Input ~ 0
Brake
Wire Wire Line
	3700 3350 4200 3350
Text GLabel 3700 3450 2    60   Input ~ 0
Dir
Text GLabel 1500 3050 2    60   Input ~ 0
Brake
Text GLabel 1200 3150 2    60   Input ~ 0
Dir
Wire Wire Line
	1200 3050 1500 3050
Text GLabel 3700 2850 2    60   Input ~ 0
Flag
Text GLabel 1500 2850 2    60   Input ~ 0
Flag
Wire Wire Line
	1200 2850 1500 2850
Text Notes 900  3600 0    60   ~ 0
From Control Module\n
$Comp
L VCC #PWR07
U 1 1 5B052ACC
P 6450 1150
F 0 "#PWR07" H 6450 1000 50  0001 C CNN
F 1 "VCC" H 6450 1300 50  0000 C CNN
F 2 "" H 6450 1150 50  0000 C CNN
F 3 "" H 6450 1150 50  0000 C CNN
	1    6450 1150
	1    0    0    -1  
$EndComp
$Comp
L VAA #PWR08
U 1 1 5B052B8B
P 6800 1150
F 0 "#PWR08" H 6800 1000 50  0001 C CNN
F 1 "VAA" H 6800 1300 50  0000 C CNN
F 2 "" H 6800 1150 50  0000 C CNN
F 3 "" H 6800 1150 50  0000 C CNN
	1    6800 1150
	1    0    0    -1  
$EndComp
$Comp
L LED D5
U 1 1 5B052BE4
P 6450 1350
F 0 "D5" H 6450 1450 50  0000 C CNN
F 1 "LED" H 6450 1250 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 6450 1350 50  0001 C CNN
F 3 "" H 6450 1350 50  0000 C CNN
	1    6450 1350
	0    -1   -1   0   
$EndComp
$Comp
L LED D6
U 1 1 5B052C8D
P 6800 1350
F 0 "D6" H 6800 1450 50  0000 C CNN
F 1 "LED" H 6800 1250 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 6800 1350 50  0001 C CNN
F 3 "" H 6800 1350 50  0000 C CNN
	1    6800 1350
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 5B052D3E
P 6450 1700
F 0 "R1" V 6530 1700 50  0000 C CNN
F 1 "680" V 6450 1700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6380 1700 50  0001 C CNN
F 3 "" H 6450 1700 50  0000 C CNN
	1    6450 1700
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5B052DC4
P 6800 1700
F 0 "R2" V 6880 1700 50  0000 C CNN
F 1 "330" V 6800 1700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6730 1700 50  0001 C CNN
F 3 "" H 6800 1700 50  0000 C CNN
	1    6800 1700
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR09
U 1 1 5B052E71
P 6450 1850
F 0 "#PWR09" H 6450 1600 50  0001 C CNN
F 1 "Earth" H 6450 1700 50  0001 C CNN
F 2 "" H 6450 1850 50  0000 C CNN
F 3 "" H 6450 1850 50  0000 C CNN
	1    6450 1850
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR010
U 1 1 5B052EB5
P 6800 1850
F 0 "#PWR010" H 6800 1600 50  0001 C CNN
F 1 "Earth" H 6800 1700 50  0001 C CNN
F 2 "" H 6800 1850 50  0000 C CNN
F 3 "" H 6800 1850 50  0000 C CNN
	1    6800 1850
	1    0    0    -1  
$EndComp
Text Notes 6450 2100 0    60   ~ 0
Status LEDs\n
$EndSCHEMATC
