function [ bmessage ] = convert_text_matrix(message,block_size)
len = length(message);
amessage = double(message);

if mod(len,block_size) ~= 0
    for i=1:block_size - mod(len,block_size)
        amessage(1,len+i) = 32;
    end
end
bmessage = reshape(amessage, block_size, ceil(len/block_size))-97+1;


