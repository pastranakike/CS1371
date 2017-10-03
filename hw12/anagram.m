function anagram(str,name)
    %Create a file with the provided name
    file = fopen(name,'w');
    %Just take one of each letter used in the str
    mask1 = str>='a' & str<='z' | str>='A' & str <= 'Z';
    charnew = str(mask1);
    char4perm = lower(sort(charnew));
    idx = 1:length(char4perm);
    idx = MatiPerm(idx);
    
    for j = 1:length(idx)
        idx(j) = {char4perm(idx{j})}; 
    end
    idx = sort(idx);
    idx = unique(idx);
    for i = 1:length(idx)
        if i == length(idx)
            fprintf(file,'%s',idx{i});
        else
            fprintf(file,'%s\n',idx{i});   
        end
    end 
end


function [out1] = MatiPerm(vec)
    n = length(vec);
    if n <= 1
        out1 = vec;
    else
        pK = MatiPerm(vec(2:end));
        first = vec(1);
        out1 = {};
        for i = 1:length(pK)
            if iscell(pK)
                baby = pK{i};
            else
                baby = pK(i);
            end
            
            for j = 1:(length(baby)+1)
                new = [baby(1:j-1) first baby(j:end)];
                out1 = [out1 new];
            end
        end
    end
end
    
    
