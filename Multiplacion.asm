name: " Multiplicacion"
org 100h 
 
include 'emu8086.inc'  
DEFINE_SCAN_NUM
DEFINE_PRINT_STRING
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
 
 
jmp inicio 
 
 
 
menu1 db 13,10,'Programa Multiplicacion',13,10,
      db 13,10,'Multiplicacion de dos numeros ',13,10,

 
 
 
db 13,10,13,10,'Digite el Primer Numero: $' 
texto1 db 13,10,13,10,'Digite el Segundo Numero: $'
texto2 db 13,10,'El resultado de la Multiplicacion es: $' 

 
num1 dw ? ;defino variables de 2 bytes
num2 dw ? ; el simbolo ? es para indicar q no se inicilizan con valor algunp
 
inicio: 
 
mov ah,09 ;instruccion para imprimir en pantalla
lea dx,menu1 ;carga cadena de texto 1 en dx
int 21h ;interrupcion pantalla 
 
call SCAN_NUM ;Llama Funcion SCAN_NUM que toma numero de teclado; el valor se guarda en ax 
mov num1,cx ;mueve numero a variable num1 
 
mov ah,09 ;interrupcion para imprimir en pantalla
lea dx,texto1 ;carga cadena de texto 2 en dx 
int 21h 
 
call SCAN_NUM ;Llama Funcion SCAN_NUM que toma numero de teclado; el valor se guarda en ax 
mov num2,cx ;mueve numero a variable num2 
 
mov ah,09 
lea dx,texto2
int 21h 
mov ax,num1 ;mueve primer numero digitado a ax 
mov bx,num2 ;mueve segundo numero digitado a bx
mul bx ;ax = ax*bx
call PRINT_NUM 
 
endp