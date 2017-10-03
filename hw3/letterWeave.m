function code = letterWeave(secret_1, secret_2, secret_3)
    index = [1:length(secret_1)+length(secret_2)];
    %This is going to be the base for decoding the first two secret words
    index(1:2:end) = secret_1;
    %Changing the numbers to letters from the secret_1's word
    index(2:2:end) = secret_2;
    %Changing the numbers to letters from the secret_2's word
    first_code = index(1:(length(index))/2);
    %Splitting the first code from the second
    second_code = index(length(index)/2+1:end);
    %Second part of the code so far
    secret_3 = fliplr(secret_3);
    %Flip the secret_3 that is going to be in the middle of our two codes
    code = [first_code secret_3 second_code];
    %Concatenation of everything in just one code
end

