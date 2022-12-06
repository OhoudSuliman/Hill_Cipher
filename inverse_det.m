function [ inv_det ] = inverse_det(key,modulo)
the_key=key;
invdet = 0;
the_mod=modulo;
moddet = mod(det(the_key),the_mod);
for i=1:the_mod
    x = moddet*i;
    xm = mod(x,the_mod);
    if  xm == 1
        invdet = i;
    end
end
inv_det=invdet;

