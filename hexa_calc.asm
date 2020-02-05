code segment
mov cx,0;
mov dx,0;
oku:
mov ah,01h;
int 21h;

cmp al,2Bh;
je sumse;

cmp al,2Ah;
je mulse;

cmp al,2Dh;
je subse;

cmp al,2Fh;
je divse;

cmp al,5Eh;
je xorse;

cmp al,26h;
je andse;

cmp al,7Ch;
je orse;

cmp al,41h;
je numbersharfe;

cmp al,42h;
je numbersharfe;

cmp al,43h;
je numbersharfe;

cmp al,44h;
je numbersharfe;

cmp al,45h;
je numbersharfe;

cmp al,46h;
je numbersharfe;


jmp numbers;

numbersharfe:
jmp numbersharf;

sumse:
jmp sums;

divse:
jmp divs;

orse:
jmp ors;

andse:
jmp ands;

xorse:
jmp xors;

mulse:
jmp muls;

subse:
jmp subs;




numbers:

sub ax,30h;
mov ah,0h;
push ax;
numbers2:
mov ah,01h;
int 21h;
cmp al,20h;
je okun;

cmp al,41h;
je numbersharf3;

cmp al,42h;
je numbersharf3;

cmp al,43h;
je numbersharf3;

cmp al,44h;
je numbersharf3;

cmp al,45h;
je numbersharf3;

cmp al,46h;
je numbersharf3;
numbers4:
sub al,30h;
mov ah,0h;
mov bx,ax;
mov ah,01h;
pop ax;
mov cx,10h;
mul cx;

add ax,bx;

push ax;
mov ah,01h;

jmp numbers2;

numbersharf3:
jmp numbersharf4;

sums:

pop ax;
pop bx;
add ax,bx;
push ax;
mov ax,100h;
mov bx,0;
int 21h;
cmp al,0Dh;
je terminate;
jmp oku;

okun:
jmp oku;

numbersharf:

sub ax,37h;
mov ah,0h;
push ax;
numbersharf2:
mov ah,01h;
int 21h;
cmp al,20h;
je okun;
cmp al,30h;
je numbers3;

cmp al,31h;
je numbers3;

cmp al,32h;
je numbers3;

cmp al,33h;
je numbers3;

cmp al,34h;
je numbers3;

cmp al,35h;
je numbers3;

cmp al,36h;
je numbers3;

cmp al,37h;
je numbers3;

cmp al,38h;
je numbers3;

cmp al,39h;
je numbers3;
numbersharf4:
sub al,37h;
mov ah,0h;
mov bx,ax;
mov ah,01h;
pop ax;
mov cx,10h;
mul cx;

add ax,bx;

push ax;
mov ah,01h;

jmp numbersharf2;

numbers3:
jmp numbers4;

muls:

pop ax;
pop bx;
mul bx;
push ax;
mov ax,100h;
mov bx,0;
int 21h;
cmp al,0Dh;
je terminate;
jmp oku;


subs:

pop ax;
pop bx;
sub bx,ax;
push bx;
mov ax,100h;
mov bx,0;
int 21h;
cmp al,0Dh;
je terminate;
jmp oku;

terminate:
jmp terminates;

divs:

mov dx,0h;
pop bx;
pop ax;
div bx;
push ax;
mov ax,100h;
mov bx,0;
int 21h;
cmp al,0Dh;
je terminate;
jmp oku;


xors:

pop ax;
pop bx;
xor ax,bx;
push ax;
mov ax,100h;
mov bx,0;
int 21h;
cmp al,0Dh;
je terminate;
jmp oku;


ands:

pop ax;
pop bx;
and ax,bx;
push ax;
mov ax,100h;
mov bx,0;
int 21h;
cmp al,0Dh;
je terminate;
jmp oku;

ors:

pop ax;
pop bx;
or ax,bx;
push ax;
mov ax,100h;
mov bx,0;
int 21h;
cmp al,0Dh;
je terminate;
jmp oku;

bin:
add dl,37h;
int 21h;
jmp jump1;

yuz:
add dl,37h;
int 21h;
jmp jump2;

terminates:
mov cx,0h;
mov ah,02h;
mov dl,0Ah;
int 21h;

pop ax;
mov bx,1000h;
mov dx,0h;
div bx;
add cx,ax;
push dx;
mov dl,al;
cmp cx,0;
je jump1;
mov ah,02h;
cmp dl,0Ah;
je bin;
cmp dl,0Bh;
je bin;
cmp dl,0Ch;
je bin;
cmp dl,0Dh;
je bin;
cmp dl,0Eh;
je bin;
cmp dl,0Fh;
je bin;

add dl,30h;
int 21h;

jump1:

pop ax;
mov bx,100h;
mov dx,0h;
div bx;
add cx,ax;
push dx;
mov dl,al;
cmp cx,0;
je jump2;
mov ah,02h;
cmp dl,0Ah;
je yuz;
cmp dl,0Bh;
je yuz;
cmp dl,0Ch;
je yuz;
cmp dl,0Dh;
je yuz;
cmp dl,0Eh;
je yuz;
cmp dl,0Fh;
je yuz;
add dl,30h;
int 21h;

jump2:

pop ax;
mov bx,10h;
mov dx,0h;
div bx;
add cx,ax;
push dx;
mov dl,al;
cmp cx,0h;
je jump3;
mov ah,02h;
cmp dl,0Ah;
je oneee;
cmp dl,0Bh;
je oneee;
cmp dl,0Ch;
je oneee;
cmp dl,0Dh;
je oneee;
cmp dl,0Eh;
je oneee;
cmp dl,0Fh;
je oneee;
add dl,30h;
int 21h;

jump3:

pop ax;
mov dl,al;
mov ah,02h;
cmp dl,0Ah;
je biree;
cmp dl,0Bh;
je biree;
cmp dl,0Ch;
je biree;
cmp dl,0Dh;
je biree;
cmp dl,0Eh;
je biree;
cmp dl,0Fh;
je biree;
add dl,30h;
int 21h;
jump4:
int 20h;



oneee:
add dl,37h;
int 21h;
jmp jump3;

biree:
add dl,37h;
int 21h;
jmp jump4;

code ends
