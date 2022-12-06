function [ key ] = find_key(key_size,modulo)
f=1;
while f==1
    key=randi([0,50] ,key_size);
    de=det(key);
    x=inverse_det(key,modulo);
    if de==0
        disp("the matrix are not invertable")
        f=1;
   elseif x==0
      disp("the inverse determin are not exist")
      f=1;
   else
       f=0;
   end
end
    
