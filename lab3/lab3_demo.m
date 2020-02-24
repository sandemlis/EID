function y = lab3_demo(t);
if nargin == 0
    t=0:0.01:6.5;
end
%t_sin=1.5:0.01:3.5;
t_sin_f=(t>=1.5)&(t<3.5);
t_sin=t(t_sin_f);
A0=0; A=1.5;
T=(3.5-1.5)/2;f=1/T;
delay=1.5;
y_sin=A0+A*sin(2*pi*f*(t_sin-delay));
%plot(t_sin,y_sin)
%axis([0 6.5 -2 2])
%% 
%t_saw=0:0.01:0.5;
t_saw_f=(t>=0)&(t<0.5);
t_saw=t(t_saw_f);
k = (1-0)/(0-0.5);
y_saw=1+k*t_saw;
%hold on
%plot(t_saw,y_saw)
%%
%t_lin=3.5:0.01:5;
t_lin_f=(t>=3.5)&(t<5);
t_lin=t(t_lin_f);
y_lin=1.5+zeros(size(t_lin));
%plot(t,y)
%%
%t_zero=0.5:0.01:1.5;
t_zero_f=(t>=0.5)&(t<1.5);
t_zero=t(t_zero_f);
y_zero=zeros(size(t_zero));
%plot(t_zero,y_zero)
%%
%t_noise=5:0.01:6.5;
t_noise_f=(t>=5)&(t<=6.5);
t_noise=t(t_noise_f);
y_noise =0.75-1.5*rand(size(t_noise));
%plot(t_noise,y_noise)
%%
%t=[t_saw,t_zero,t_sin,t_lin,t_noise];
%y=[y_saw,y_zero,y_sin,y_lin,y_noise];
%plot(t,y)
%axis([0 6.5 -2 2])