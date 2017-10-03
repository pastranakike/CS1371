function [final] = poker(hands)
    hands = sort(hands,2);
    hand1 = hands(1,:);
    hand2 = hands(2,:);
    hand3 = hands(3,:);
    hand4 = hands(4,:);
    hand5 = hands(5,:);
    hand6 = hands(6,:);
    
    %Determine the power of the first player hand
    c1 = unique(hand1)
    occ1 = histc(hand1, c1)
    straigh1 = diff(hand1)
    
        if any(occ1 == 4) || any(occ1 == 4) && any(occ1 == 3) || any(occ1 == 4) && any(occ1 == 2)
            value1 = 7;
            high1 = hand1(occ1==max(occ1));
        elseif any(occ1==3) && any(occ1==2)
            value1 = 6;
            high1 = hand1(occ1==max(occ1));
        elseif strfind(straigh1, [1 1 1 1]) > 0
            value1 = 5;
            high1 = max(hand1([1 1 1 1]));
        elseif any(occ1==3)
            value1 = 4;
            high1 = hand1(occ1==max(occ1));
        elseif sum(occ1==2) == 2
            value1 = 3;
            high1 = hand1(occ1==max(occ1));
        elseif any(occ1==2)
            value1 = 2;
            high1 = hand1(occ1==max(occ1));  
        else
            value1 = 1;
            high1 = max(hand1);
        end
        
end

