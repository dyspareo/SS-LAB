data segment
a db 04h
b db 02h
result dw 1 dup(0)
data ends
code segment
assume cs:code,ds:data
start:
MOV ax,data
MOV ds,ax
XOR ax,ax
XOR bx,bx
MOV al,a
MOV bl,b
ADD al,bl
MOV result,ax
MOV ah,4ch
int 21h
code ends
end start



      
