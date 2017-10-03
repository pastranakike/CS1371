function [gcd, lcm] = gcdLCM(a,b)

    a_or = a;
    b_or = b;

    while a > 0 && b > 0
        r = rem(a,b);
        a = b;
        b = r;
        
        if b == 0
            gcd = a;
        end
    end
    
    lcm = a_or*b_or./gcd;
end

