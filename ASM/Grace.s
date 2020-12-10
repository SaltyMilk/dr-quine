;Com1
%define FILE
%macro 


fun:ret
main:
call fun
mov rdi,format
mov rsi,10
mov rdx,39
mov rcx,format
mov r8,59
call printf
xor rdi,rdi
call exit
ret
section .text 
global main
extern printf
extern exit
section .data
format db '%4$cCom1%csection .text%1$cglobal main%1$cextern printf%1$cextern exit%1$cfun:ret%1$cmain:%1$c%4$cCom2%1$ccall fun%1$cmov rdi,format%1$cmov rsi,10%1$cmov rdx,39%1$cmov rcx,format%1$cmov r8,59%1$ccall printf%1$cxor rdi,rdi%1$ccall exit%1$cret%1$csection .data%1$cformat db %c%s%2$c,0%1$c',0
