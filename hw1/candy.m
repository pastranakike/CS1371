function [perkid, wasted] = candy(numC, numK)
    div = numC./numK;
    perkid = floor(div);
    wasted = mod(numC, numK);
end
