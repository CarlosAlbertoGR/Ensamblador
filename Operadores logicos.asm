.model SMALL
.STACK 256

.DATA


bDato1 DB 10H  
bDato2 DB 01FH
bDato3 DW 010FFh
bDato4 DW 00AFFh 


.CODE
main PROC
     MOV  AX, @DATA
     MOV  DS, AX 
                  
     MOV  AX, 1100101000111011b
     MOV  BX, 0000111000000000b
     AND  AX, BX
     
     MOV  AX, 1100101000111011b
     MOV  BX, 0000111000000000b
     OR   AX, BX 
     
     MOV  AX, 1100101000111011b
     MOV  BX, 0000111000000000b
     XOR  AX, BX  
     
     NOT  AX
     
     MOV  AX, 1100101000111011b
     MOV  BX, 0000111000000000b
     TEST  AX, BX
     
     CMP  AX,BX
     
     
     
     
     MOV AX, 10
     MOV BX, 10
     CMP AX,BX 
     
     MOV AX, 10
     MOV BX, 5
     CMP AX,BX
     
     MOV AX, 5
     MOV BX, 10
     CMP AX,BX
              
     MOV  AH,04Ch
     MOV  AL,0
     INT  21h
main ENDP
     END  main