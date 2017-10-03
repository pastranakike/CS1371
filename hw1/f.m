function [out1] = f(x,y,k)
    first_sum = y + k;
    first_rem = rem(first_sum, 17);
    first_substraction = -17.*x-first_rem;
    first_floor = floor(first_sum./17);
    second_rem = rem((first_floor.*2.^first_substraction),2);
    out1 = floor(second_rem);
    %The code is giving error - Fixed
end

