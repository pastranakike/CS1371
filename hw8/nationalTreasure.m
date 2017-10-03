function [decipher] = nationalTreasure(coor, file2decipher)
    coor = fopen(coor);
    line = fgetl(coor);
    finalcoor = line;
    value = [];
    
    while ischar(line)
        line = fgetl(coor);
        finalcoor = [finalcoor ' ' line];
    end

    finalcoor = strsplit(finalcoor);
    
    for vec = 1:length(finalcoor)-1
        file = fopen(file2decipher);
        specificell = char(finalcoor(vec));
        
        if strcmp(specificell,'space')
            value = [value ' '];
            
        else
            mask1 = specificell == '-';
            specificell(mask1) = ' ';
            specificell = strsplit(specificell);
            
            line2decipher = str2double(cell2mat(specificell(1)));
            word2decipher = str2double(cell2mat(specificell(2)));
            letter2decipher = str2double(cell2mat(specificell(3)));
            
            countline = 0;
            while countline ~= line2decipher
                file4line = fgetl(file);
                countline = countline+1;
            end
            
            countword = 0;
            while countword ~= word2decipher
                [worddecipher, resd] = strtok(file4line);
                file4line = resd;
                countword = countword + 1;
            end
            
            file4letter = worddecipher(letter2decipher);
            value = [value file4letter];  
            
        end
        fclose(file);
    end
    fclose(coor);
    decipher = value;
end


