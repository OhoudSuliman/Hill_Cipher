function Hill_Cipher_algorithm()
message = input('Input Message: ', 's');
modulo=input('Input Modulo:');
key_size=input('Input the key size:');
key=find_key(key_size,modulo);
fprintf('--------Key matrix-------       \n');
disp(key);
block_size =key_size;
len = length(message);
amessage = double(message);
% store the place of space in message
j=1;
index_space(j)=0;
for i=1:len
    if amessage(i)==32 
        index_space(j)=i;
       j=j+1;
    end
end
% convert the message to plaintext matrix
bmessage=convert_text_matrix(message,block_size);
disp("The plaintext matrix:")
disp(bmessage);
% Encrypt the plaintext
en_message = Hill_Encrypt(key,bmessage,modulo);
disp("The ciphertext matrix:")
disp(en_message);
enc_message = en_message;
cipher_text =convert_matrix_text(en_message,block_size,len);
fprintf('     -----------------Encryption----------------------       \n');
fprintf('            The ciphertext  is %s \n',cipher_text);
%Decrypt the ciphertext
de_message = Hill_Decrypt(key,enc_message,modulo);
de_message =  convert_matrix_text(de_message,block_size,len);
% remove unneccacry charaters
modlen = mod(len,block_size);
if modlen ~= 0
    de_message = de_message(1:len);
end
% add space to message
plain_text=de_message;
size_space = size(index_space,2);
for i=1:len
    for j=1:size_space
        if index_space(j)~=0
           x= index_space(j);
           plain_text(x)=32;
       end
    end
end
% display the plaintext agin 
fprintf('     -----------------Decryption----------------------       \n');
fprintf('            The plaintext is %s\n',plain_text);
end