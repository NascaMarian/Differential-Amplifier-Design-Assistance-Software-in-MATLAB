clear 
close all
clc
R1=1000;  %OHM
R2=2000;  %OHM
R3=3000;  %OHM
R4=4000;  %OHM

VI1=10;   %VOLTI
VI2=12;   %VOLTI

f=100;    %HZ

Ep=15;    %VOLTI(tensiuni de alimentare)
En=15;    %VOLTI

N=4;      %NUMAR DE PERIOADE
s=1;      %TIPUL DE SEMNAL (sin,cos,etc.)
m=1;      %variabila pe care o setezi ca sa iti afiseze ce semnal vrei de
          %semnal (primul semnal de intrare, al doilea, semnalul de iesire
          %toate semnalele

sel=1;    %select radiobutton grup, grid on/off
OK=1;
functie(R1,R2,R3,R4,VI1,VI2,f,Ep,En,N,s,m,sel)

hN=uicontrol('Style','text',...
 'Units','normalized',...
 'Position',[0.15 0.65 0.04 0.03],... 
 'String',['N=' num2str(N)]);

