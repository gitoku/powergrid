function a = wind(now_t,period,a_max,a_base)

p = a_max;
q = a_base;
t = mod(now_t,period);  %Œ»İ
T = period; %ˆêüŠú‚Ì’·‚³

if t<((8/24)*T)
    a = q;
elseif t<((20/24)*T)
    a = p * sin( pi*(t - (8/24)*T)/(0.5*T) ) + q;
else
    a = q;
end