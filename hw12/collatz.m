function [result, count] = collatz(num)
    if num == 1
        result = num;
        count = 0;
    elseif mod(num,2)==0
        result = num./2;
        [new_res, new_count] = collatz(result);
        count = 1 + new_count;
        result = new_res;
    else 
        result = 3.*num + 1;
        [new_res, new_count] = collatz(result);
        count = 1 + new_count;
        result = new_res;
    end
end