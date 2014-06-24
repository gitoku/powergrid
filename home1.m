function a = home1(now_t,period,a_max,a_min,a_base)

p = a_max;
q = a_min;
r = a_base;
t = mod(now_t,period);  %Œ»İ
T = period; %ˆêüŠú‚Ì’·‚³

if t<((1/3)*T)
    a = -q * sin(3*pi*t/T) + r;
else
    a = p * sin(3*pi*(t - (1/3)*T)/(2*T)) + r;
end