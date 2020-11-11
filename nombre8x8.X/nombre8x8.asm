#include "p16F887.inc"   ; TODO INSERT CONFIG CODE HERE USING CONFIG BITS GENERATOR
 	__CONFIG	_CONFIG1,	_INTRC_OSC_NOCLKOUT & _WDT_OFF & _PWRTE_OFF & _MCLRE_ON & _CP_OFF & _CPD_OFF & _BOR_OFF & _IESO_ON & _FCMEN_ON & _LVP_OFF 
 	__CONFIG	_CONFIG2,	_BOR40V & _WRT_OFF

RES_VECT  CODE    0x0000            ; processor reset vector
    GOTO    START                   ; go to beginning of program

MAIN_PROG CODE                      ; let linker place main program
i equ 0x30
j equ 0x31
k equ 0x32
n equ 0x33
o equ 0x34
p equ 0x35
l equ 0x36
w equ 0x37
 
START

    BANKSEL PORTA ;
    CLRF PORTA ;Init PORTA
    BANKSEL ANSEL ;
    CLRF ANSEL ;digital I/O
    CLRF ANSELH
    BANKSEL TRISA ;
    CLRF TRISA
    CLRF TRISB
    CLRF TRISC
    CLRF TRISD
    CLRF TRISE
    BCF STATUS,RP1
    BCF STATUS,RP0
    CLRF PORTA
    CLRF PORTB
    CLRF PORTC
    CLRF PORTD
    CLRF PORTE
    
  inicio
    call fune
    call seguire
    
    CLRF PORTB
    CLRF PORTD
    call funz
    call seguirz
    
    CLRF PORTB
    CLRF PORTD
    call funm
    call seguirm
    
    goto inicio
   
  fune
    call m1
    call tiempo
    call m2
    call tiempo
    call m3
    call tiempo
    call m4
    call tiempo
    call m5
    call tiempo 
    call m6 
    call tiempo
    call m7
    call tiempo
    call m8
    call tiempo
    return  
    m1
    MOVLW   b'00000000'                          
    MOVWF   PORTD  
    MOVLW   b'00000000'                          
    MOVWF   PORTB  
    return
    m2
    MOVLW   b'01000000'                          
    MOVWF   PORTD  
    MOVLW   b'00000000'                          
    MOVWF   PORTB  
    return
    m3
    MOVLW   b'00100000'                          
    MOVWF   PORTD  
    MOVLW   b'01110110'                          
    MOVWF   PORTB  
    return
    m4
    MOVLW   b'00010000'                          
    MOVWF   PORTD  
    MOVLW   b'01110110'                          
    MOVWF   PORTB 
    return
    m5
    MOVLW   b'00001000'                          
    MOVWF   PORTD  
    MOVLW   b'01110110'                          
    MOVWF   PORTB 
    return
    m6
    MOVLW   b'00000100'                          
    MOVWF   PORTD  
    MOVLW   b'01111110'                          
    MOVWF   PORTB 
    return
    m7
    MOVLW   b'00000010'                          
    MOVWF   PORTD  
    MOVLW   b'01111110'                          
    MOVWF   PORTB 
    return
    m8
    MOVLW   b'00000000'                          
    MOVWF   PORTD  
    MOVLW   b'00000000'                          
    MOVWF   PORTB 
    return
    
funz
    
    call p1
    call tiempo
    call p2
    call tiempo
    call p3
    call tiempo
    call p4
    call tiempo
    call p5
    call tiempo 
    call p6 
    call tiempo
    call p7
    call tiempo
    call p8
    call tiempo
    return
    
    p1
    MOVLW   b'00000000'                          
    MOVWF   PORTD  
    MOVLW   b'00000000'                          
    MOVWF   PORTB  
    return
    p2
    MOVLW   b'01000000'                          
    MOVWF   PORTD  
    MOVLW   b'00000000'                          
    MOVWF   PORTB  
    return
    p3
    MOVLW   b'00100000'                          
    MOVWF   PORTD  
    MOVLW   b'11101111'                          
    MOVWF   PORTB  
    return
    p4
    MOVLW   b'00010000'                          
    MOVWF   PORTD  
    MOVLW   b'11101111'                          
    MOVWF   PORTB 
    return
    p5
    MOVLW   b'00001000'                          
    MOVWF   PORTD  
    MOVLW   b'11101111'                          
    MOVWF   PORTB 
    return
    p6
    MOVLW   b'00000100'                          
    MOVWF   PORTD  
    MOVLW   b'11101111'                          
    MOVWF   PORTB 
    return
    p7
    MOVLW   b'00000010'                          
    MOVWF   PORTD  
    MOVLW   b'00000000'                          
    MOVWF   PORTB 
    return
    p8
    MOVLW   b'00000000'                          
    MOVWF   PORTD  
    MOVLW   b'00000000'                          
    MOVWF   PORTB 
    return
    
    funm
    call h1
    call tiempo
    call h2
    call tiempo
    call h3
    call tiempo
    call h4
    call tiempo
    call h5
    call tiempo 
    call h6 
    call tiempo
    call h7
    call tiempo
    call h8
    call tiempo
    return
    
    h1
    MOVLW   b'00000000'                          
    MOVWF   PORTD  
    MOVLW   b'00000000'                          
    MOVWF   PORTB  
    return
    h2
    MOVLW   b'01000000'                          
    MOVWF   PORTD  
    MOVLW   b'00000000'                          
    MOVWF   PORTB  
    return
    h3
    MOVLW   b'00100000'                          
    MOVWF   PORTD  
    MOVLW   b'10111111'                          
    MOVWF   PORTB  
    return
    h4
    MOVLW   b'00010000'                          
    MOVWF   PORTD  
    MOVLW   b'11011111'                          
    MOVWF   PORTB 
    return
    h5
    MOVLW   b'00001000'                          
    MOVWF   PORTD  
    MOVLW   b'10111111'                          
    MOVWF   PORTB 
    return
    h6
    MOVLW   b'00000100'                          
    MOVWF   PORTD  
    MOVLW   b'00000000'                          
    MOVWF   PORTB 
    return
    h7
    MOVLW   b'00000000'                          
    MOVWF   PORTD  
    MOVLW   b'00000000'                          
    MOVWF   PORTB 
    return
    h8
    MOVLW   b'00000000'                          
    MOVWF   PORTD  
    MOVLW   b'00000000'                          
    MOVWF   PORTB 
    return
    
seguire
    MOVLW d'10'
    MOVWF n
    nop
    nop
    nop
    nop
    nop
    nop
  loopom: MOVLW d'10' 
    MOVWF o
      nop
      nop
      nop
      nop
      nop
      nop
      nop
  loopm: MOVLW d'0'
    MOVWF p
    DECFSZ p
    GOTO $-1
    call fune
    DECFSZ o
    GOTO loopm
    DECFSZ n
    GOTO loopom
    return
    
seguirz
    MOVLW d'10'
    MOVWF n
    nop
    nop
    nop
    nop
    nop
    nop
  loopop: MOVLW d'10' 
    MOVWF o
      nop
      nop
      nop
      nop
      nop
      nop
      nop
  looppp: MOVLW d'0'
    MOVWF p
    DECFSZ p
    GOTO $-1
    call funz
    DECFSZ o
    GOTO looppp
    DECFSZ n
    GOTO loopop
    return
    
seguirm
    MOVLW d'10'
    MOVWF n
    nop
    nop
    nop
    nop
    nop
    nop
  loopoh: MOVLW d'10' 
    MOVWF o
      nop
      nop
      nop
      nop
      nop
      nop
      nop
  looph: MOVLW d'0'
    MOVWF p
    DECFSZ p
    GOTO $-1
    call funm
    DECFSZ o
    GOTO looph
    DECFSZ n
    GOTO loopoh
    return
    
tiempo2    
 MOVLW d'54'
    MOVWF n
    nop
    nop
    nop
    nop
    nop
    nop
  loopo: MOVLW d'68' 
    MOVWF o
      nop
      nop
      nop
      nop
      nop
      nop
      nop
  loopp: MOVLW d'44'
    MOVWF p
    DECFSZ p
    GOTO $-1
    DECFSZ o
    GOTO loopp
    DECFSZ n
    GOTO loopo
    return
  
    
tiempo
    MOVLW d'5'
    MOVWF i
loopj:    MOVLW d'5'
    MOVWF j
loopk:    MOVLW d'5'
    nop
    MOVWF k
    DECFSZ k
    GOTO $-1
    DECFSZ j
    GOTO loopk
    DECFSZ i
    GOTO loopj
    RETURn  
    
END