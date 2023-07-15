 .model small


.stack 64
.data
  
;declarando variables globales
numero1 db 0
numero2 db 0

resta db 0

msjn1 db 10,13, "INGRESE EL PRIMER NUMERO A RESTAR=  ",'$';ingrese n1
msjn2 db 10,13, "INGRESE EL SEGUNDO NUMERO A RESTAR=  ",'$';ingrese n2

;mensaje para mostrar los resultados
 

msjnR db 10,13, "LA RESTA DE LA OPERACION DADA ES=  ",'$'
 

.code
begin proc far   
    
    
    ;direccionamiento del procedimiento
    mov ax, @data
    mov ds,ax   
    
    
    ;solicitar del teclado numero 1
    
    mov ah, 09
    lea dx, msjn1
    int 21h
    mov ah, 01
    int 21h
    sub al, 30h
    mov numero1,al   
    
    
    ;solicitar del teclado numero 2
    
    mov ah, 09
    lea dx, msjn2
    int 21h
    mov ah, 01
    int 21h
    sub al, 30h
    mov numero2,al
    
    ;operaciones aritmeticas
                  
    
    ;RESTA
    mov al,numero1
    sub al,numero2
    mov resta,al
    
 
    ;mostrando la resta
    mov ah,09
    lea dx,msjnR
    int 21h
    mov dl,resta
    add dl,30h 
    mov ah,02
    int 21h
   
  
    ;cierre del programa
    mov ah,4ch
    int 21h
    
    begin endp
end