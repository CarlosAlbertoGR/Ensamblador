include 'emu8086.inc'
org 100h
.data
suma db 2 dup(?)
msg db "Programa suma$"      
.code
main proc
    mov dx,offset msg
    mov ah, 09h
    int 21h
    
    printn
    print "Ingresa el primer numero: "  
    call scan_num
    mov  suma[0],cl
    printn ""
    print "Ingrese el segundo numero: "
    call scan_num
    mov  suma[1],cl
    xor ax, ax
    add al,suma
    add al, suma [1]
                    
    printn "" 
    print "La solucion es: "
    call print_num
main endp
     exit:
     printn ""
     print "Enter para salir..."
     mov ah,0
     int 16h
     ret
     
     define_print_string
     define_print_num
     define_print_num_uns
     define_scan_num