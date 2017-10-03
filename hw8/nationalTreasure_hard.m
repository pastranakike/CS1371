function [decipher] = nationalTreasure_hard(coor, file2decipher)
    line = fgetl(coor);
    finalcoor = line;
    value = [];
    
    while ischar(line)
        line = fgetl(coor);
        finalcoor = [finalcoor ' ' line];
    end
    
    finalcoor = finalcoor(1:end-1);
    finalcoor = strsplit(finalcoor);
    
    line_file = fgets(file2decipher);
    text = line_file;
    while ischar(line_file)
        line_file = fgets(file2decipher);
        text = [text line_file];
    end
    text = text(1:end-1);
    text = strsplit(text,char(10));

    for vec = 1:length(finalcoor)-1
        
        specificell = finalcoor{vec};
        
        if strcmp(specificell,'space')
            value = [value ' '];
            
        else
            mask1 = specificell == '-';
            specificell(mask1) = ' ';
            specificell = strsplit(specificell);
            
            line2decipher = str2double(specificell{1});
            word2decipher = str2double(specificell{2});
            letter2decipher = str2double(specificell{3});
            
            specific_line = text{line2decipher};
            countword = 0;
            
            while countword ~= word2decipher
                [worddecipher, resd] = strtok(specific_line);
                specific_line = resd;
                countword = countword + 1;
            end
            
            file4letter = worddecipher(letter2decipher);
            value = [value file4letter];  
            
        end
    end
    fclose(coor);
    decipher = value;
end