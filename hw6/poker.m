function [winner] = poker(hands)
    
    hands = sort(hands,2);
    hand1 = hands(1,:);
    hand2 = hands(2,:);
    hand3 = hands(3,:);
    hand4 = hands(4,:);
    hand5 = hands(5,:);
    hand6 = hands(6,:);
    
    handValue1 = pokerHelper(hand1);
    handValue2 = pokerHelper(hand2);
    handValue3 = pokerHelper(hand3);
    handValue4 = pokerHelper(hand4);
    handValue5 = pokerHelper(hand5);
    handValue6 = pokerHelper(hand6);
    
    values = [handValue1(1) handValue2(1) handValue3(1) handValue4(1) handValue5(1) handValue6(1)];
    highest = [handValue1(2) handValue2(2) handValue3(2) handValue4(2) handValue5(2) handValue6(2)];
    
    types = {'High Card','One Pair','Two Pair','Three of a Kind','Straight','Full House','Four of a Kind'};
    
    [combination, almost_winner] = max(values);
    
        if length(values(values==combination)) == 1
            winner = sprintf('Player %d won with a %s.',almost_winner, char(types(combination)));
            
        elseif length(values(values==combination)) > 1
            new_values = values==combination;
            
            [highest_card] = max(highest(new_values));
            
            
            if length(highest(highest(new_values) == highest_card)) == 1 
            almost_winner = highest == highest_card;
            almost_winner = find(almost_winner & new_values);
            winner = sprintf('Player %d won with a %s.',almost_winner, char(types(combination)));
            
            else   
            winner = 'Thank you for your donation to Hope and Zell Miller.';
            
            end
            
        elseif combination == 1 && length(values(values==combination)) > 1
           winner = 'Thank you for your donation to Hope and Zell Miller.';
        end
end

function[handValue] = pokerHelper(hand)

    c = unique(hand);
    occ = histc(hand, c);
    straight = diff(c);
    
        if any(occ == 4) || any(occ == 4) && any(occ == 3) || any(occ == 4) && any(occ == 2)
            value = 7;
            high = c(occ==max(occ));
        elseif any(occ==3) && any(occ==2) || sum(occ == 3) == 2
            value = 6;
            high = max(c(occ==max(occ)));
        elseif strfind(straight, [1 1 1 1]) > 0
            value = 5;
            high = max(hand([strfind(straight, [1 1 1 1]),strfind(straight, [1 1 1 1])+4]));
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
