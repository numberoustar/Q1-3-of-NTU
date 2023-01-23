clear;clc;close all
Delta = 0.001;
%time (second)
t=0:Delta:50;
n=length(t);
%set the initial value
Y(:,1)=[10;0;0;1];

%forth-order Runge-Kutta method
for k=1:n-1
    z1=f(t(k),Y(:,k));
    z2=f(t(k)+Delta/2,Y(:,k)+z1*Delta/2);
    z3=f(t(k)+Delta/2,Y(:,k)+z2*Delta/2);
    z4=f(t(k)+Delta,Y(:,k)+z3*Delta);
    Y(:,k+1)=Y(:,k)+Delta*(z1+2*z2+2*z3+z4)/6;
end
%x:C(S)  y:C(ES)  m:C(P)  n:C(E)
x=Y(1,:);
y=Y(2,:);
m=Y(3,:);
n=Y(4,:);

%four figures delineate the velocity of four species as the time goes by
figure
set(gcf,'units','normalized','position',[0.15,0.2,0.7,0.6]);
subplot(2,2,1)
plot(t,-100/60*n.*x+600/60*y,'b')
xlabel('time /s')
ylabel('rate of changes of S /(¦Ìm/s)')

subplot(2,2,2)
plot(t,150/60*y,'r')
xlabel('time /s')
ylabel('rate of changes of P /(¦Ìm/s)')

subplot(2,2,3)
plot(t,100/60*n.*x-150/60*y-600/60*y,'b')
xlabel('time /s')
ylabel('rate of changes of ES /(¦Ìm/s)')

subplot(2,2,4)
plot(t,n,'r')
xlabel('time /s')
ylabel('rate of changes of E /(¦Ìm/s)')


