function F=f(t,Y)
x=Y(1);
y=Y(2);
m=Y(3);
n=Y(4);
%four equations of changing rate of four species(time unit:second)
f1=-100/60*n*x+600/60*y;
f2=100/60*n*x-150/60*y-600/60*y;
f3=150/60*y;
f4=750/60*y-100/60*n*x;
F=[f1;f2;f3;f4];
end