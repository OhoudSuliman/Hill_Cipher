function [ text ] = convert_matrix_text(en_message,block_size,len)
for i=1:ceil(len/block_size)
    for j=1:block_size
        en_message(j,i)= en_message(j,i)+97-1;
       
    end
end
text = reshape(char(en_message),1,j*i);
