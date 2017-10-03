function [info] = wordCounter(file)
    file = fopen(file);
    text = fgetl(file);
    line = [text ' '];
    while ischar(text)
        text = fgetl(file);
        line = [line text ' '];
    end
    
    mask1 = line >= 'a' & line <= 'z' | line >= 'A' & line <= 'Z' | line == 32;
    line = line(mask1);
    line = line(1:end-1);
    line = strsplit(line);
    sorted_line = sort(line);
    unique_line = unique(sorted_line);
    
    %1 way 
    %repetition = histc(line, unique_line);
    
    %2 way
    occ = [];
    for i = 1:length(unique_line)
        rep = strcmp(sorted_line,unique_line(i));
        times = length(sorted_line(rep));
        occ = [occ times];
    end
    
    occ = num2cell(occ);
    
    info = [unique_line; occ];
end

