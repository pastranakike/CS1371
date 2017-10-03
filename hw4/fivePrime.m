function [Papa] = fivePrime(CincoEstrellas)

    divided_five_prime  = mod(CincoEstrellas, 5) == 0 | isprime(CincoEstrellas);
    index_5 = find(divided_five_prime);
    guaco = CincoEstrellas(index_5);
    average = sum(guaco);
    average = average./length(guaco);
    average = round(average);
    CincoEstrellas(CincoEstrellas == average) = str2num('NaN');
    Papa = CincoEstrellas;
    
end

