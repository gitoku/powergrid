function a = solar(now_t,period,a_max)

p = a_max;
t = mod(now_t,period);  %���ݎ���
T = period; %������̒���

if t<(0.25*T)
    a = 0;
elseif t<(0.75*T)
    a = p * sin( pi*(t - 0.25*T)/(0.5*T) );
else
    a = 0;
end