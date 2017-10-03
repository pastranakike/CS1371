function tankTrials(old_tanks, new_tanks)
    oldtanks = fopen(old_tanks)
    header = fgetl(oldtanks);
    line = fgetl(oldtanks);
    while ischar(line)
        line = fgetl(oldtanks);
        oldtanks_stats = [oldtanks_stats line];
    end
    
        


end

