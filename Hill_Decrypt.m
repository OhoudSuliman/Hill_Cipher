function [ result ] = Hill_Decrypt( key, message,modulo )
the_key = key;
the_mod=modulo;
invdet=inverse_det(key,modulo);
adj=inv(the_key);
adjmoddet = round(det(the_key) * adj);
modadj = mod(adjmoddet,the_mod);
inverse_key = mod(invdet*modadj,the_mod);
result = round(inverse_key * message);
result = mod(result,the_mod);
end