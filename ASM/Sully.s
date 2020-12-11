section .text
global main
extern sprintf
extern dprintf
extern system
extern exit
extern bzero
%define buff_size 248
main:
mov rdi,buff
mov rsi,buff_size
call bzero
mov rdi,buff
mov rsi,fname_format
mov rdx,[i]
call sprintf
mov rax,5
mov rbx, buff
mov rcx, 0
int 80h
cmp rax, 0
jl continue
sub [i],DWORD 1
mov rdi,buff
mov rsi,fname_format
mov rdx,[i]
call sprintf
continue:
mov rax,5
mov rbx,buff
mov rcx,0102o
mov rdx,0666o
int 80h
mov rdi,rax
mov rsi,code
mov rdx,10
mov rcx,[i]
mov r8,39
mov r9,code
call dprintf
mov rdi,buff
mov rsi,buff_size
call bzero
mov rdi,buff
mov rsi,compile_cmd
mov rdx,[i]
call sprintf
mov rdi,buff
call system
mov rdi,buff
mov rsi,buff_size
call bzero
mov rdi,buff
mov rsi,execute_cmd
mov rdx,[i]
call sprintf
cmp [i],DWORD 0
jle end
mov rdi,buff
call system
end:
xor rdi,rdi
call exit

section .data
i DD 5
buff times buff_size db 0
fname_format db 'Sully_%d.s', 0
compile_cmd db 'nasm -f elf64 Sully_%d.s && ld --dynamic-linker /lib/x86_64-linux-gnu/ld-linux-x86-64.so.2 -lc -e main -o Sully_%1$d Sully_%1$d.o', 0
execute_cmd db './Sully_%d', 0
code db 'section .text%cglobal main%1$cextern sprintf%1$cextern dprintf%1$cextern system%1$cextern exit%1$cextern bzero%1$c%%define buff_size 248%1$cmain:%1$cmov rdi,buff%1$cmov rsi,buff_size%1$ccall bzero%1$cmov rdi,buff%1$cmov rsi,fname_format%1$cmov rdx,[i]%1$ccall sprintf%1$cmov rax,5%1$cmov rbx, buff%1$cmov rcx, 0%1$cint 80h%1$ccmp rax, 0%1$cjl continue%1$csub [i],DWORD 1%1$cmov rdi,buff%1$cmov rsi,fname_format%1$cmov rdx,[i]%1$ccall sprintf%1$ccontinue:%1$cmov rax,5%1$cmov rbx,buff%1$cmov rcx,0102o%1$cmov rdx,0666o%1$cint 80h%1$cmov rdi,rax%1$cmov rsi,code%1$cmov rdx,10%1$cmov rcx,[i]%1$cmov r8,39%1$cmov r9,code%1$ccall dprintf%1$cmov rdi,buff%1$cmov rsi,buff_size%1$ccall bzero%1$cmov rdi,buff%1$cmov rsi,compile_cmd%1$cmov rdx,[i]%1$ccall sprintf%1$cmov rdi,buff%1$ccall system%1$cmov rdi,buff%1$cmov rsi,buff_size%1$ccall bzero%1$cmov rdi,buff%1$cmov rsi,execute_cmd%1$cmov rdx,[i]%1$ccall sprintf%1$ccmp [i],DWORD 0%1$cjle end%1$cmov rdi,buff%1$ccall system%1$cend:%1$cxor rdi,rdi%1$ccall exit%1$c%1$csection .data%1$ci DD %d%1$cbuff times buff_size db 0%1$cfname_format db %cSully_%%d.s%3$c, 0%1$ccompile_cmd db %3$cnasm -f elf64 Sully_%%d.s && ld --dynamic-linker /lib/x86_64-linux-gnu/ld-linux-x86-64.so.2 -lc -e main -o Sully_%%1$d Sully_%%1$d.o%3$c, 0%1$cexecute_cmd db %3$c./Sully_%%d%3$c, 0%1$ccode db %3$c%s%3$c, 0%1$c', 0
