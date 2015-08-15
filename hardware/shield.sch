EESchema Schematic File Version 2
LIBS:minicube
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
LIBS:special
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
LIBS:dc-dc
LIBS:shield-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "20 dec 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 4900 2400 2    60   ~ 0
Vin
Text Label 4900 2300 2    60   ~ 0
GND
Text Label 4900 2200 2    60   ~ 0
GND
Text Label 4900 2100 2    60   ~ 0
5v_USB
Text Label 4900 2000 2    60   ~ 0
3v3
Text Label 4900 1900 2    60   ~ 0
RESET
Text Label 6100 2000 0    60   ~ 0
SIN
Text Label 6100 1800 0    60   ~ 0
SCLK
Text Label 6100 1700 0    60   ~ 0
GND
Text Label 6100 1600 0    60   ~ 0
AREF
Text Label 6100 1500 0    60   ~ 0
SDA
Text Label 6100 1400 0    60   ~ 0
SCL
Text Label 4900 3300 2    60   ~ 0
A0
Text Label 4900 3200 2    60   ~ 0
A1
Text Label 4900 3100 2    60   ~ 0
A2
Text Label 4900 3000 2    60   ~ 0
A3
Text Label 4900 2800 2    60   ~ 0
A_EN
Text Label 6100 2700 0    60   ~ 0
GSCLK
Text Label 6100 2800 0    60   ~ 0
BLANK
Text Label 6100 2900 0    60   ~ 0
XLAT
Text Label 6100 3000 0    60   ~ 0
MODE
$Comp
L CONN_8 P3
U 1 1 54905CA7
P 5250 2050
F 0 "P3" V 5200 2050 60  0000 C CNN
F 1 "POWER" V 5300 2050 60  0000 C CNN
F 2 "" H 5250 2050 60  0000 C CNN
F 3 "" H 5250 2050 60  0000 C CNN
	1    5250 2050
	1    0    0    -1  
$EndComp
Text Label 4900 1800 2    60   ~ 0
VCC
$Comp
L CONN_6 P4
U 1 1 54905CFE
P 5250 3050
F 0 "P4" V 5200 3050 60  0000 C CNN
F 1 "A0_5" V 5300 3050 60  0000 C CNN
F 2 "" H 5250 3050 60  0000 C CNN
F 3 "" H 5250 3050 60  0000 C CNN
	1    5250 3050
	1    0    0    -1  
$EndComp
$Comp
L CONN_8 P1
U 1 1 54905D1D
P 5750 2950
F 0 "P1" V 5700 2950 60  0000 C CNN
F 1 "D0_7" V 5800 2950 60  0000 C CNN
F 2 "" H 5750 2950 60  0000 C CNN
F 3 "" H 5750 2950 60  0000 C CNN
	1    5750 2950
	-1   0    0    1   
$EndComp
$Comp
L CONN_10 P2
U 1 1 54905D2C
P 5750 1850
F 0 "P2" V 5700 1850 60  0000 C CNN
F 1 "D8_13" V 5800 1850 60  0000 C CNN
F 2 "" H 5750 1850 60  0000 C CNN
F 3 "" H 5750 1850 60  0000 C CNN
	1    5750 1850
	-1   0    0    1   
$EndComp
Text Label 4000 3700 2    60   ~ 0
SOUT
Text Label 4000 3800 2    60   ~ 0
GSCLK
Text Label 4000 3900 2    60   ~ 0
VCC
Text Label 4000 4000 2    60   ~ 0
VCC
Text Label 4000 4100 2    60   ~ 0
GND
Text Label 4000 4200 2    60   ~ 0
BLANK
Text Label 4000 4300 2    60   ~ 0
XLAT
Text Label 4000 4600 2    60   ~ 0
SIN
$Comp
L MOS_P Q1
U 1 1 54906075
P 8200 1900
F 0 "Q1" H 8200 2090 60  0000 R CNN
F 1 "MOS_P" H 8200 1720 60  0000 R CNN
F 2 "~" H 8200 1900 60  0000 C CNN
F 3 "~" H 8200 1900 60  0000 C CNN
	1    8200 1900
	1    0    0    -1  
$EndComp
Text Label 8000 1900 2    60   ~ 0
Q1
Text Label 8300 2100 0    60   ~ 0
S1
$Comp
L MOS_P Q2
U 1 1 5490612F
P 8800 1900
F 0 "Q2" H 8800 2090 60  0000 R CNN
F 1 "MOS_P" H 8800 1720 60  0000 R CNN
F 2 "~" H 8800 1900 60  0000 C CNN
F 3 "~" H 8800 1900 60  0000 C CNN
	1    8800 1900
	1    0    0    -1  
$EndComp
Text Label 8600 1900 2    60   ~ 0
Q2
Text Label 8900 2100 0    60   ~ 0
S2
$Comp
L MOS_P Q3
U 1 1 5490613E
P 9400 1900
F 0 "Q3" H 9400 2090 60  0000 R CNN
F 1 "MOS_P" H 9400 1720 60  0000 R CNN
F 2 "~" H 9400 1900 60  0000 C CNN
F 3 "~" H 9400 1900 60  0000 C CNN
	1    9400 1900
	1    0    0    -1  
$EndComp
Text Label 9200 1900 2    60   ~ 0
Q3
Text Label 9500 2100 0    60   ~ 0
S3
$Comp
L MOS_P Q4
U 1 1 54906147
P 10000 1900
F 0 "Q4" H 10000 2090 60  0000 R CNN
F 1 "MOS_P" H 10000 1720 60  0000 R CNN
F 2 "~" H 10000 1900 60  0000 C CNN
F 3 "~" H 10000 1900 60  0000 C CNN
	1    10000 1900
	1    0    0    -1  
$EndComp
Text Label 9800 1900 2    60   ~ 0
Q4
Text Label 10200 1600 0    60   ~ 0
5v
Text Label 10100 2100 0    60   ~ 0
S4
$Comp
L MOS_P Q5
U 1 1 54906183
P 8200 3200
F 0 "Q5" H 8200 3390 60  0000 R CNN
F 1 "MOS_P" H 8200 3020 60  0000 R CNN
F 2 "~" H 8200 3200 60  0000 C CNN
F 3 "~" H 8200 3200 60  0000 C CNN
	1    8200 3200
	1    0    0    -1  
$EndComp
Text Label 8000 3200 2    60   ~ 0
Q5
Text Label 8300 3400 0    60   ~ 0
S5
$Comp
L MOS_P Q6
U 1 1 5490618C
P 8800 3200
F 0 "Q6" H 8800 3390 60  0000 R CNN
F 1 "MOS_P" H 8800 3020 60  0000 R CNN
F 2 "~" H 8800 3200 60  0000 C CNN
F 3 "~" H 8800 3200 60  0000 C CNN
	1    8800 3200
	1    0    0    -1  
$EndComp
Text Label 8600 3200 2    60   ~ 0
Q6
Text Label 8900 3400 0    60   ~ 0
S6
$Comp
L MOS_P Q7
U 1 1 54906195
P 9400 3200
F 0 "Q7" H 9400 3390 60  0000 R CNN
F 1 "MOS_P" H 9400 3020 60  0000 R CNN
F 2 "~" H 9400 3200 60  0000 C CNN
F 3 "~" H 9400 3200 60  0000 C CNN
	1    9400 3200
	1    0    0    -1  
$EndComp
Text Label 9200 3200 2    60   ~ 0
Q7
Text Label 9500 3400 0    60   ~ 0
S7
$Comp
L MOS_P Q8
U 1 1 5490619E
P 10000 3200
F 0 "Q8" H 10000 3390 60  0000 R CNN
F 1 "MOS_P" H 10000 3020 60  0000 R CNN
F 2 "~" H 10000 3200 60  0000 C CNN
F 3 "~" H 10000 3200 60  0000 C CNN
	1    10000 3200
	1    0    0    -1  
$EndComp
Text Label 9800 3200 2    60   ~ 0
Q8
Text Label 10200 2900 0    60   ~ 0
5v
Text Label 10100 3400 0    60   ~ 0
S8
$Comp
L CONN_2 P5
U 1 1 54906223
P 2450 3350
F 0 "P5" V 2400 3350 40  0000 C CNN
F 1 "POWER" V 2500 3350 40  0000 C CNN
F 2 "" H 2450 3350 60  0000 C CNN
F 3 "" H 2450 3350 60  0000 C CNN
	1    2450 3350
	1    0    0    -1  
$EndComp
Text Label 2100 3450 2    60   ~ 0
5v_EXT
Text Label 2100 3250 2    60   ~ 0
GND
$Comp
L R R1
U 1 1 54906253
P 8300 2350
F 0 "R1" V 8380 2350 40  0000 C CNN
F 1 "R" V 8307 2351 40  0000 C CNN
F 2 "~" V 8230 2350 30  0000 C CNN
F 3 "~" H 8300 2350 30  0000 C CNN
	1    8300 2350
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 54906262
P 8900 2350
F 0 "R2" V 8980 2350 40  0000 C CNN
F 1 "R" V 8907 2351 40  0000 C CNN
F 2 "~" V 8830 2350 30  0000 C CNN
F 3 "~" H 8900 2350 30  0000 C CNN
	1    8900 2350
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 54906271
P 9500 2350
F 0 "R3" V 9580 2350 40  0000 C CNN
F 1 "R" V 9507 2351 40  0000 C CNN
F 2 "~" V 9430 2350 30  0000 C CNN
F 3 "~" H 9500 2350 30  0000 C CNN
	1    9500 2350
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 54906280
P 10100 2350
F 0 "R4" V 10180 2350 40  0000 C CNN
F 1 "R" V 10107 2351 40  0000 C CNN
F 2 "~" V 10030 2350 30  0000 C CNN
F 3 "~" H 10100 2350 30  0000 C CNN
	1    10100 2350
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5490628F
P 8300 3650
F 0 "R5" V 8380 3650 40  0000 C CNN
F 1 "R" V 8307 3651 40  0000 C CNN
F 2 "~" V 8230 3650 30  0000 C CNN
F 3 "~" H 8300 3650 30  0000 C CNN
	1    8300 3650
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5490629E
P 8900 3650
F 0 "R6" V 8980 3650 40  0000 C CNN
F 1 "R" V 8907 3651 40  0000 C CNN
F 2 "~" V 8830 3650 30  0000 C CNN
F 3 "~" H 8900 3650 30  0000 C CNN
	1    8900 3650
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 549062AD
P 9500 3650
F 0 "R7" V 9580 3650 40  0000 C CNN
F 1 "R" V 9507 3651 40  0000 C CNN
F 2 "~" V 9430 3650 30  0000 C CNN
F 3 "~" H 9500 3650 30  0000 C CNN
	1    9500 3650
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 549062BC
P 10100 3650
F 0 "R8" V 10180 3650 40  0000 C CNN
F 1 "R" V 10107 3651 40  0000 C CNN
F 2 "~" V 10030 3650 30  0000 C CNN
F 3 "~" H 10100 3650 30  0000 C CNN
	1    10100 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 2600 8300 2700
Wire Wire Line
	8300 2700 10200 2700
Text Label 10200 2700 0    60   ~ 0
GND
Text Label 10200 4000 0    60   ~ 0
GND
Wire Wire Line
	10100 2600 10100 2700
Connection ~ 10100 2700
Wire Wire Line
	9500 2600 9500 2700
Connection ~ 9500 2700
Wire Wire Line
	8900 2600 8900 2700
Connection ~ 8900 2700
Wire Wire Line
	8300 3900 8300 4000
Wire Wire Line
	8300 4000 10200 4000
Wire Wire Line
	10100 3900 10100 4000
Connection ~ 10100 4000
Wire Wire Line
	9500 3900 9500 4000
Connection ~ 9500 4000
Wire Wire Line
	8900 3900 8900 4000
Connection ~ 8900 4000
$Comp
L DIODESCH D1
U 1 1 54906326
P 7300 2900
F 0 "D1" H 7300 3000 40  0000 C CNN
F 1 "DIODESCH" H 7300 2800 40  0000 C CNN
F 2 "~" H 7300 2900 60  0000 C CNN
F 3 "~" H 7300 2900 60  0000 C CNN
	1    7300 2900
	1    0    0    -1  
$EndComp
Text Label 7600 3000 0    60   ~ 0
5v
Text Label 6900 2900 2    60   ~ 0
5v_EXT
$Comp
L DIODESCH D2
U 1 1 54906341
P 7300 3500
F 0 "D2" H 7300 3600 40  0000 C CNN
F 1 "DIODESCH" H 7300 3400 40  0000 C CNN
F 2 "~" H 7300 3500 60  0000 C CNN
F 3 "~" H 7300 3500 60  0000 C CNN
	1    7300 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 2900 7500 3500
Wire Wire Line
	7500 3000 7600 3000
Connection ~ 7500 3000
Text Label 6900 3500 2    60   ~ 0
5v_USB
Wire Wire Line
	8300 1600 10200 1600
Wire Wire Line
	8300 1600 8300 1700
Wire Wire Line
	8900 1600 8900 1700
Connection ~ 8900 1600
Wire Wire Line
	9500 1600 9500 1700
Connection ~ 9500 1600
Wire Wire Line
	10100 1600 10100 1700
Connection ~ 10100 1600
Wire Wire Line
	8300 2900 10200 2900
Wire Wire Line
	8300 2900 8300 3000
Wire Wire Line
	8900 3000 8900 2900
Connection ~ 8900 2900
Wire Wire Line
	9500 2900 9500 3000
Connection ~ 9500 2900
Wire Wire Line
	10100 3000 10100 2900
Connection ~ 10100 2900
Text Label 6100 5300 2    60   ~ 0
A0
Text Label 6100 5400 2    60   ~ 0
A1
Text Label 6100 5500 2    60   ~ 0
A2
Text Label 6100 5700 2    60   ~ 0
A3
Text Label 6100 5800 2    60   ~ 0
A_EN
Text Label 7300 5100 0    60   ~ 0
Q1
Text Label 7300 5200 0    60   ~ 0
Q2
Text Label 7300 5300 0    60   ~ 0
Q3
Text Label 7300 5400 0    60   ~ 0
Q4
Text Label 7300 5500 0    60   ~ 0
Q5
Text Label 7300 5600 0    60   ~ 0
Q6
Text Label 7300 5700 0    60   ~ 0
Q7
Text Label 7300 5800 0    60   ~ 0
Q8
Text Label 6100 5600 2    60   ~ 0
A3in
$Comp
L 74HC138 U1
U 1 1 54908026
P 6700 5450
F 0 "U1" H 6450 4900 60  0000 C CNN
F 1 "74HCT138" H 6850 4901 60  0000 C CNN
F 2 "~" H 6700 5450 60  0000 C CNN
F 3 "~" H 6700 5450 60  0000 C CNN
	1    6700 5450
	1    0    0    -1  
$EndComp
Text Label 6100 5100 2    60   ~ 0
5v
Text Label 6100 5200 2    60   ~ 0
GND
Text Label 8500 5100 2    60   ~ 0
S1
Text Label 8500 5200 2    60   ~ 0
S2
Text Label 8500 5300 2    60   ~ 0
S3
Text Label 8500 5400 2    60   ~ 0
S4
Text Label 8500 5500 2    60   ~ 0
S5
Text Label 8500 5600 2    60   ~ 0
S6
Text Label 8500 5700 2    60   ~ 0
S7
Text Label 8500 5800 2    60   ~ 0
S8
$Comp
L CONN_1 P7
U 1 1 5490CBB7
P 8650 5100
F 0 "P7" H 8730 5100 40  0000 L CNN
F 1 "CONN_1" H 8650 5155 30  0001 C CNN
F 2 "" H 8650 5100 60  0000 C CNN
F 3 "" H 8650 5100 60  0000 C CNN
	1    8650 5100
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P8
U 1 1 5490CBC6
P 8650 5200
F 0 "P8" H 8730 5200 40  0000 L CNN
F 1 "CONN_1" H 8650 5255 30  0001 C CNN
F 2 "" H 8650 5200 60  0000 C CNN
F 3 "" H 8650 5200 60  0000 C CNN
	1    8650 5200
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P9
U 1 1 5490CBD5
P 8650 5300
F 0 "P9" H 8730 5300 40  0000 L CNN
F 1 "CONN_1" H 8650 5355 30  0001 C CNN
F 2 "" H 8650 5300 60  0000 C CNN
F 3 "" H 8650 5300 60  0000 C CNN
	1    8650 5300
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P10
U 1 1 5490CBE4
P 8650 5400
F 0 "P10" H 8730 5400 40  0000 L CNN
F 1 "CONN_1" H 8650 5455 30  0001 C CNN
F 2 "" H 8650 5400 60  0000 C CNN
F 3 "" H 8650 5400 60  0000 C CNN
	1    8650 5400
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P11
U 1 1 5490CBF3
P 8650 5500
F 0 "P11" H 8730 5500 40  0000 L CNN
F 1 "CONN_1" H 8650 5555 30  0001 C CNN
F 2 "" H 8650 5500 60  0000 C CNN
F 3 "" H 8650 5500 60  0000 C CNN
	1    8650 5500
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P12
U 1 1 5490CC02
P 8650 5600
F 0 "P12" H 8730 5600 40  0000 L CNN
F 1 "CONN_1" H 8650 5655 30  0001 C CNN
F 2 "" H 8650 5600 60  0000 C CNN
F 3 "" H 8650 5600 60  0000 C CNN
	1    8650 5600
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P13
U 1 1 5490CC11
P 8650 5700
F 0 "P13" H 8730 5700 40  0000 L CNN
F 1 "CONN_1" H 8650 5755 30  0001 C CNN
F 2 "" H 8650 5700 60  0000 C CNN
F 3 "" H 8650 5700 60  0000 C CNN
	1    8650 5700
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P14
U 1 1 5490CC20
P 8650 5800
F 0 "P14" H 8730 5800 40  0000 L CNN
F 1 "CONN_1" H 8650 5855 30  0001 C CNN
F 2 "" H 8650 5800 60  0000 C CNN
F 3 "" H 8650 5800 60  0000 C CNN
	1    8650 5800
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P15
U 1 1 549179FC
P 10150 5100
F 0 "P15" H 10230 5100 40  0000 L CNN
F 1 "CONN_1" H 10150 5155 30  0001 C CNN
F 2 "" H 10150 5100 60  0000 C CNN
F 3 "" H 10150 5100 60  0000 C CNN
	1    10150 5100
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P16
U 1 1 54917A0B
P 10150 5200
F 0 "P16" H 10230 5200 40  0000 L CNN
F 1 "CONN_1" H 10150 5255 30  0001 C CNN
F 2 "" H 10150 5200 60  0000 C CNN
F 3 "" H 10150 5200 60  0000 C CNN
	1    10150 5200
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P17
U 1 1 54917A1A
P 10150 5300
F 0 "P17" H 10230 5300 40  0000 L CNN
F 1 "CONN_1" H 10150 5355 30  0001 C CNN
F 2 "" H 10150 5300 60  0000 C CNN
F 3 "" H 10150 5300 60  0000 C CNN
	1    10150 5300
	1    0    0    -1  
$EndComp
$Comp
L CONN_1 P18
U 1 1 54917A29
P 10150 5400
F 0 "P18" H 10230 5400 40  0000 L CNN
F 1 "CONN_1" H 10150 5455 30  0001 C CNN
F 2 "" H 10150 5400 60  0000 C CNN
F 3 "" H 10150 5400 60  0000 C CNN
	1    10150 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 5100 10000 5100
Wire Wire Line
	9900 5100 9900 5400
Wire Wire Line
	9900 5400 10000 5400
Wire Wire Line
	10000 5300 9900 5300
Connection ~ 9900 5300
Wire Wire Line
	9900 5200 10000 5200
Connection ~ 9900 5200
Connection ~ 9900 5100
Text Label 9800 5100 2    60   ~ 0
GND
$Comp
L R R9
U 1 1 54919FAC
P 4900 4950
F 0 "R9" V 4980 4950 40  0000 C CNN
F 1 "10k" V 4907 4951 40  0000 C CNN
F 2 "~" V 4830 4950 30  0000 C CNN
F 3 "~" H 4900 4950 30  0000 C CNN
	1    4900 4950
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 54919FBB
P 4900 5450
F 0 "R10" V 4980 5450 40  0000 C CNN
F 1 "22k" V 4907 5451 40  0000 C CNN
F 2 "~" V 4830 5450 30  0000 C CNN
F 3 "~" H 4900 5450 30  0000 C CNN
	1    4900 5450
	1    0    0    -1  
$EndComp
Text Label 4900 5200 0    60   ~ 0
SENSE_EXT
Text Label 4900 4700 0    60   ~ 0
5v_EXT
Text Label 4900 5700 0    60   ~ 0
GND
Text Label 6100 2300 0    60   ~ 0
SENSE_EXT
Wire Wire Line
	6900 2900 7100 2900
Wire Wire Line
	7000 2900 7000 3000
Connection ~ 7000 2900
Wire Wire Line
	6900 3500 7100 3500
Wire Wire Line
	7000 3400 7000 3500
Connection ~ 7000 3500
$Comp
L DIODE D3
U 1 1 5491B6A4
P 7000 3200
F 0 "D3" H 7000 3300 40  0000 C CNN
F 1 "DIODE" H 7000 3100 40  0000 C CNN
F 2 "~" H 7000 3200 60  0000 C CNN
F 3 "~" H 7000 3200 60  0000 C CNN
	1    7000 3200
	0    1    1    0   
$EndComp
Text Label 3650 5000 0    60   ~ 0
dGSCLK
Text Label 3650 5100 0    60   ~ 0
dMODE
Text Label 3650 5200 0    60   ~ 0
dBLANK
Text Label 3650 5300 0    60   ~ 0
dXLAT
Text Label 3650 5500 0    60   ~ 0
dSIN
Text Label 2250 5000 2    60   ~ 0
GSCLK
Text Label 2250 5100 2    60   ~ 0
MODE
Text Label 2250 5200 2    60   ~ 0
BLANK
Text Label 2250 5300 2    60   ~ 0
XLAT
Text Label 2250 5500 2    60   ~ 0
MOSI
$Comp
L C C1
U 1 1 5491B790
P 5000 6700
F 0 "C1" H 5000 6800 40  0000 L CNN
F 1 "100n" H 5006 6615 40  0000 L CNN
F 2 "~" H 5038 6550 30  0000 C CNN
F 3 "~" H 5000 6700 60  0000 C CNN
	1    5000 6700
	1    0    0    -1  
$EndComp
Text Label 4900 6400 2    60   ~ 0
5v
Text Label 4900 7000 2    60   ~ 0
GND
$Comp
L CP1 C3
U 1 1 5492E307
P 5300 6700
F 0 "C3" H 5350 6800 50  0000 L CNN
F 1 "2200u" H 5350 6600 50  0000 L CNN
F 2 "~" H 5300 6700 60  0000 C CNN
F 3 "~" H 5300 6700 60  0000 C CNN
	1    5300 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 6400 5300 6500
Wire Wire Line
	4900 6400 5300 6400
Wire Wire Line
	4900 7000 5300 7000
Wire Wire Line
	5000 6900 5000 7000
Connection ~ 5000 7000
Wire Wire Line
	5300 7000 5300 6900
Connection ~ 5300 7000
Wire Wire Line
	5000 6500 5000 6400
Connection ~ 5000 6400
$Comp
L R R12
U 1 1 5492E5CD
P 6650 4400
F 0 "R12" V 6730 4400 40  0000 C CNN
F 1 "R" V 6657 4401 40  0000 C CNN
F 2 "~" V 6580 4400 30  0000 C CNN
F 3 "~" H 6650 4400 30  0000 C CNN
	1    6650 4400
	0    1    1    0   
$EndComp
Text Label 6900 4200 0    60   ~ 0
A_EN
Text Label 6200 4400 2    60   ~ 0
VCC
$Comp
L R R11
U 1 1 5492E5F6
P 6650 4200
F 0 "R11" V 6730 4200 40  0000 C CNN
F 1 "R" V 6657 4201 40  0000 C CNN
F 2 "~" V 6580 4200 30  0000 C CNN
F 3 "~" H 6650 4200 30  0000 C CNN
	1    6650 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 4400 6400 4400
Wire Wire Line
	6300 4400 6300 4200
Wire Wire Line
	6300 4200 6400 4200
Connection ~ 6300 4400
Text Label 6900 4400 0    60   ~ 0
BLANK
Text Label 2600 1950 2    60   ~ 0
GSCLK
Text Label 2600 2450 2    60   ~ 0
MODE
Text Label 2600 2050 2    60   ~ 0
VCC
Text Label 2600 2150 2    60   ~ 0
BLANK
Text Label 2600 2250 2    60   ~ 0
XLAT
Text Label 2600 2650 2    60   ~ 0
SOUT
$Comp
L CONN_8 P20
U 1 1 5494987B
P 2950 2300
F 0 "P20" V 2900 2300 60  0000 C CNN
F 1 "EXT1" V 3000 2300 60  0000 C CNN
F 2 "" H 2950 2300 60  0000 C CNN
F 3 "" H 2950 2300 60  0000 C CNN
	1    2950 2300
	1    0    0    -1  
$EndComp
Text Label 2600 2550 2    60   ~ 0
SIN
$Comp
L CONN_6 P21
U 1 1 549499B4
P 2950 1450
F 0 "P21" V 2900 1450 60  0000 C CNN
F 1 "ADDR_EXT" V 3000 1450 60  0000 C CNN
F 2 "" H 2950 1450 60  0000 C CNN
F 3 "" H 2950 1450 60  0000 C CNN
	1    2950 1450
	1    0    0    -1  
$EndComp
Text Label 2600 1200 2    60   ~ 0
A0
Text Label 2600 1300 2    60   ~ 0
A1
Text Label 2600 1400 2    60   ~ 0
A2
Text Label 2600 1500 2    60   ~ 0
A3
Text Label 2600 1600 2    60   ~ 0
A3in
Text Label 2600 1700 2    60   ~ 0
A_EN
Text Label 4900 2900 2    60   ~ 0
A3in
$Comp
L CONN_8 P22
U 1 1 54949D10
P 1900 2300
F 0 "P22" V 1850 2300 60  0000 C CNN
F 1 "EXT2" V 1950 2300 60  0000 C CNN
F 2 "" H 1900 2300 60  0000 C CNN
F 3 "" H 1900 2300 60  0000 C CNN
	1    1900 2300
	1    0    0    -1  
$EndComp
Text Label 4000 3600 2    60   ~ 0
GND
Text Label 4000 4700 2    60   ~ 0
GND
Text Label 4000 4400 2    60   ~ 0
SCLK
Text Label 4000 4500 2    60   ~ 0
MODE
$Comp
L CONN_12 P6
U 1 1 5494B415
P 4350 4150
F 0 "P6" V 4300 4150 60  0000 C CNN
F 1 "BOARD" V 4400 4150 60  0000 C CNN
F 2 "" H 4350 4150 60  0000 C CNN
F 3 "" H 4350 4150 60  0000 C CNN
	1    4350 4150
	1    0    0    -1  
$EndComp
Text Label 2250 5400 2    60   ~ 0
SCK
Text Label 3650 5400 0    60   ~ 0
dSCLK
Text Label 2600 2350 2    60   ~ 0
SCLK
Text Label 1550 1950 2    60   ~ 0
GSCLK
Text Label 1550 2450 2    60   ~ 0
MODE
Text Label 1550 2050 2    60   ~ 0
VCC
Text Label 1550 2150 2    60   ~ 0
BLANK
Text Label 1550 2250 2    60   ~ 0
XLAT
Text Label 1550 2650 2    60   ~ 0
SOUT
Text Label 1550 2350 2    60   ~ 0
SCLK
Text Label 1550 2550 2    60   ~ 0
SIN
$Comp
L CONN_2 P19
U 1 1 5494C4D9
P 2450 3800
F 0 "P19" V 2400 3800 40  0000 C CNN
F 1 "P5v" V 2500 3800 40  0000 C CNN
F 2 "" H 2450 3800 60  0000 C CNN
F 3 "" H 2450 3800 60  0000 C CNN
	1    2450 3800
	1    0    0    -1  
$EndComp
Text Label 2100 3700 2    60   ~ 0
GND
Text Label 2100 3900 2    60   ~ 0
5v
$EndSCHEMATC
