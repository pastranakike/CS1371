function [winner] = pkmnBattle(stats1, stats2, moves1, moves2)

    %HP of each pokemon
    HP1 = stats1(2);
    HP2 = stats2(2);
    
    %1. Determine the fastest
    
    speed1 = stats1(end);
    speed2 = stats2(end);
%     pikachu = stats1;
%     charizard = stats2;
    
%     if speed1 > speed2
%         first = pikachu;
%         second = charizard;
%     else
%         first = charizard;
%         second = pikachu;
%         
%     end
    
    %2. Determine damage of each movement
    
    damage1 = [];
    damage2 = [];
    for indx = 1:4
        if moves1(indx,3) == 0
            damage1 = [damage1 ((2.*stats1(1)+10)./250) * (stats1(3)/stats2(4)) * moves1(indx, 1) + 2];
            
        else 
           damage1 = [damage1 ((2.*stats1(1)+10)./250) * (stats1(5)/stats2(6)) * moves1(indx, 1) + 2]; 
        end
        
        if moves2(indx,3) == 0
            damage2 = [damage2 ((2.*stats2(1)+10)./250) * (stats2(3)/stats1(4)) * moves2(indx, 1) + 2];
        else 
           damage2 = [damage2 ((2.*stats2(1)+10)./250) * (stats2(5)/stats1(6)) * moves2(indx, 1) + 2]; 
        end
    end
    
    damage1 = round(damage1);
    damage2 = round(damage2);
    
    %Concatenate PP and damage in one matrix. Sorted
    
    [damage1 indx1] = sort(damage1);
    [damage2 indx2] = sort(damage2);
    PP1 = moves1(:,2)'
    PP2 = moves2(:,2)'
    options1 = [damage1; PP1(indx1)];
    options2 = [damage2; PP2(indx2)];
    
    
    %Start the battle 
    while HP1 > 0 && HP2 > 0
        if speed1 > speed2
            HP2 = HP2 - options1(1,end);
            if HP2 <= 0
                winner = sprintf('Congratulations, Champion of the Pokemon League! Your Pokemon survived with %d HP.',HP1);
                break
            end
            HP1 = HP1 - options2(1,end);
            if HP1 <= 0
                winner = sprintf('You lost the battle and blacked out! The enemy had %d HP remaining.',HP2);
                break
            end            
            options1(2,end) = options1(2,end) - 1;
            options2(2,end) = options2(2,end) - 1;
            
                if options1(2,end) == 0
                    options1(:,end-1);
                end
                
                if options2(2,end) ==0
                    options2(:,end-1);
                end
        else
            HP1 = HP1 - options2(1,end);
            if HP1 <= 0
                winner = sprintf('You lost the battle and blacked out! The enemy had %d HP remaining.',HP2);
                break
            end
            HP2 = HP2 - options1(1,end);
            if HP2 <= 0
                winner = sprintf('Congratulations, Champion of the Pokemon League! Your Pokemon survived with %d HP.',HP1);
                break
            end      
            
            options2(2,end) = options2(2,end) - 1;
            options1(2,end) = options1(2,end) - 1;
            
                if options2(2,end) == 0
                    options2(:,end-1);
                end
                
                if options1(2,end) ==0
                    options1(:,end-1);
                end
        end
    end
    
end

