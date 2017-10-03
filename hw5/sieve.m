function [prime] = sieve(n)
    %create a vector of lenght n
    vec = (1:1:n);
    %Transpose the vector
    factor = vec';
    %Create an array of n col and n row
    arr = ones(n,n);
    %Multiply the factor with the array 
    arr = factor.*arr;
    %Transpose the array
    vecArr = arr';
    %Thanks to the transpose we can divide each element of the factor with
    %each element of the array depending of the row
    division = factor./vecArr;
    %Transpose the division to assign each column with its respective value
    finalDiv = division';
    %Find the integer
    integer = finalDiv == floor(finalDiv);
    %Tranform the logical array to a double one
    integer = double(integer);
    %Sum the rows of the array
    integer = sum(integer);
    %find where is 2 because prime number are only going to have 2 integers
    primes = integer == 2;
    %Voilá! 
    prime = vec(primes);
end

