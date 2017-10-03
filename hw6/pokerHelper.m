
function[handValue] = pokerHelper(hand)

    c = unique(hand);
    occ = histc(hand, c);
    straigh = diff(hand);
    
        if any(occ == 4) || any(occ == 4) && any(occ == 3) || any(occ == 4) && any(occ == 2)
            value = 7;
            high = c(occ==max(occ));
        elseif any(occ==3) && any(occ==2)
            value = 6;
            high = c(occ==max(occ));
        elseif strfind(straigh, [1 1 1 1]) > 0
            value = 5;
            high = max(hand([strfind(straigh, [1 1 1 1]),strfind(straigh, [1 1 1 1])+4]));
        elseif any(occ==3)
            value = 4;
            high = c(occ==max(occ));
        elseif sum(occ==2) == 2 || sum(occ==2) == 3
            value = 3;
            high = max(c(occ==max(occ)));
        elseif any(occ==2)
            value = 2;
            high = c(occ==max(occ));  
        else
            value = 1;
            high = max(hand); 
        end
        
    handValue = [value high];
end