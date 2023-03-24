clear all;
close all;

Ao=0;       %component contiuna
A=1.2;      %amplit
f=100;      %frecventa
N=7;        %nr perioade
RB1=55E+3;  %rezist baza 1
RB2=30E+3;  %rezist baza 2
RC=800;     %rezist colector
RE=550;     %rezist emitor
Beta=100;
VAl=5;      %tensiune alimentare
tip=1;      %tip semnal
proiect(Ao,A,f,N,RB1,RB2,RC,RE,Beta,VAl,tip);
