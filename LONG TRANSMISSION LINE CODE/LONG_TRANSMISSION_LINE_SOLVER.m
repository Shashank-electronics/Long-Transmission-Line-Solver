clc
clear all
close all
%Auto simulator for 3 phase long distance transmission line for calculating supply
%voltage and current by rigorous method.
% Sample Question " A 3 Phase transmission line 200 km long has the
% following constants:-
%Resistance/Phase/Km=0.16 ohm
%Reactance/Phase/Km=0.25 Ohm
%Shunt admittance/phase/Km=1.5e-6 S
%Calculate by rigorous method the sending end voltage and current when the
%line is delivering a load of 20MW at 0.8 pf lagging.The receiving end
%voltage is kept constant at 110KV

L=input('Enter Length of Transmission line\n');
r=input('Enter Resistance/Phase/Km \n');
I=input('Enter Reactance/Phase/Km \n');
y=input('EnterShunt admittance/phase/Km \n');
Pr=input('Enter Receiving Power \n');
Vr=input('Enter Receiving end Voltage \n');
pf=input('Enter power factor value \n');
R=r*L;
ind=I*L;
Y=y*L*i
Vl=Vr/sqrt(3);
Z=R+ind*i;
Ir=Pr/(3*Vl*pf);
A=cosh(sqrt(Y*Z));
[q,p]=cart2pol(real(A),imag(A));
p=p*180/p;
B=sqrt(Z/Y)*sinh(sqrt(Y*Z));
C=sqrt(Y/Z)*sinh(sqrt(Y*Z));
Vs=Vl*A + Ir*B;
Is=Vl*C + Ir*A;
disp("Supply voltage value in complex form ");
disp(Vs)
disp("Supply current value in complex form ");
Is
[theta1,Vsp]=cart2pol(real(Vs),imag(Vs)) ;
[theta2,Isp]=cart2pol(real(Is),imag(Is)) ;
disp("Supply voltage value in polar form ");
Vsp
disp(" theta value ");
(theta1)*180/pi
disp("Supply current value in polar form ");
Isp
disp(" theta value ");
(theta2)*180/pi









