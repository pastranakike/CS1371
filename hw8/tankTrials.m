function tankTrials(old_tanks, new_tanks)
    [outname] = strtok(new_tanks,'.');
    %global outname
    oldtanks = fopen(old_tanks);
    new_tanks = fopen(new_tanks);
    header = fgetl(oldtanks);
    line = fgetl(oldtanks);
    oldtanks_stats = line;
    
    while ischar(line)
        line = fgetl(oldtanks);
        oldtanks_stats = [oldtanks_stats ', ' line];
    end
    
    oldtanks_stats = oldtanks_stats(1:end-2);
    oldtanks_stats = strsplit(oldtanks_stats, ', ');
    name = oldtanks_stats(1:3:end);
    thickness = oldtanks_stats(2:3:end);
    angle = oldtanks_stats(3:3:end);
    
    thickness = str2num(char(thickness));
    angle = str2num(char(angle));
    armor = thickness ./ cosd(angle);
    armor = armor';
    
    header2 = fgetl(new_tanks);
    line2 = fgetl(new_tanks);
    newtanks_stats = line2;
    
    while ischar(line2)
        line2 = fgetl(new_tanks);
        newtanks_stats = [newtanks_stats ', ' line2];
    end
    
    newtanks_stats = newtanks_stats(1:end-2);
    newtanks_stats = strsplit(newtanks_stats, ', ');
    
    name_new = newtanks_stats(1:2:end);
    damage_new = newtanks_stats(2:2:end);
    damage_new = str2num(char(damage_new))';
    finaltxt = fopen([outname '_results' '.txt'],'w');
    fprintf(finaltxt,'Tank Trial Results:\n');
    
    for vec = 1:length(damage_new)
        defeat = damage_new(vec) > armor;
        numdefeated = sum(defeat);
        [best] = max(armor(defeat));
        
        if vec ~= length(damage_new)  
            if sum(numdefeated) == 0
                fprintf(finaltxt,'The %s was not able to defeat any old vehicles.\n', char(name_new(vec)));
            else
                inx = best == armor;
                fprintf(finaltxt,'The %s was able to defeat %d old vehicles! The toughest opponent it beat was the %s.\n',char(name_new(vec)),numdefeated,char(name(inx)));
            end
            
        else
            if sum(numdefeated) == 0
                fprintf(finaltxt,'The %s was not able to defeat any old vehicles.', char(name_new(vec)));
            else
                inx = best == armor;
            fprintf(finaltxt,'The %s was able to defeat %d old vehicles! The toughest opponent it beat was the %s.',char(name_new(vec)),numdefeated,char(name(inx)));
            end
        end
    end
    
    fclose(oldtanks);
    fclose(new_tanks);
    fclose(finaltxt);
end
