;Com1
%define DIX_NEUF 19
%define QUARANTE_DEUX 42
%define NBR_DEFINE_INUTILE 3
%macro code 1
_start:
call fun
fun:
mov rax, 5
mov rbx, file
mov rcx, 0102o
mov rdx, 0666o
int 80h
mov rdi,rax
mov rsi,format
mov rdx,10
mov rcx,39
mov r8,format
mov r9,59
sub rsp, 8
call dprintf
add rsp, 8
xor rdi,rdi
call exit
%endmacro
section .text
global _start
extern dprintf
extern exit
code 19
section .data
format db '%4$cCom1%c%%define DIX_NEUF 19%1$c%%define QUARANTE_DEUX 42%1$c%%define NBR_DEFINE_INUTILE 3%1$c%%macro code 1%1$c_start:%1$ccall fun%1$cfun:%1$cmov rax, 5%1$cmov rbx, file%1$cmov rcx, 0102o%1$cmov rdx, 0666o%1$cint 80h%1$cmov rdi,rax%1$cmov rsi,format%1$cmov rdx,10%1$cmov rcx,39%1$cmov r8,format%1$cmov r9,59%1$csub rsp, 8%1$ccall dprintf%1$cadd rsp, 8%1$cxor rdi,rdi%1$ccall exit%1$c%%endmacro%1$csection .text%1$cglobal _start%1$cextern dprintf%1$cextern exit%1$ccode 19%1$csection .data%1$cformat db %c%s%2$c, 0%1$cfile db %2$cGrace_kid.s%2$c, 0%1$c', 0
file db 'Grace_kid.s', 0
