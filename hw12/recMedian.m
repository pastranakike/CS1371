function out1 = recMedian(in)
    sort_in = sort(in);
    len = length(sort_in);
    
    if mod(len,2) == 1
        out1 = in(len./2);
    else
        out1 = mean(in(len),in(len+1));
    end
    
end
