PROCESSOR 16F887
#include <xc.inc>
;CONFIG word1
CONFIG FOSC = INTRC_NOCLKOUT
CONFIG WDTE = OFF
CONFIG PWRTE = ON
CONFIG MCLRE = OFF
CONFIG CP = OFF
CONFIG CPD = OFF
CONFIG BOREN = OFF
CONFIG IESO = OFF
CONFIG FCMEN = ON
CONFIG DEBUG = ON
;CONFIG word2
CONFIG BOR4V=BOR40V
CONFIG WRT = OFF
PSECT udata
 mask:
    DS 1
cont:
    DS 1
suma:
    DS 1

PSECT resetVec,class=CODE,delta=2
resetVec:
PAGESEL main
goto main
PSECT code
 main:
 bcf 0x03,6
 bcf 0x03,5
 movlw 0b10010010
 ANDLW 0b00110101
 movwf suma
 goto main
 END