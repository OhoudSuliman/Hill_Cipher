function [ result ] = Hill_Encrypt( key, message,modulo)
the_key=key;
the_mod=modulo;
result = the_key*message;
result = mod(result,the_mod);
end

