function [fib] = r_nFib(first, n)
    if first == 0
        second = 1;
    else
        second = first;
    end
    
    if n > 1
        vec = [first second];
        out = Fib_helper(vec, n-2);
        fib = out;
    else
        fib = first;
    end
    
end

function out = Fib_helper(v,n)
    third = sum(v(end-1:end));
    al_out = [v third];
    if n == 1
        out = al_out;
    else
        new_out = Fib_helper(al_out,n-1);
        out = new_out;
    end
end