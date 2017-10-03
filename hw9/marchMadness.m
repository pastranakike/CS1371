function [tournament] = marchMadness(ppg, oppg, wpct,seed,matches)
    [~, ~, seed] = xlsread(seed);
    [~, ~, ppg] = xlsread(ppg);
    [~, ~, oppg] = xlsread(oppg);
    [~, ~, wpct] = xlsread(wpct);
    [~, ~, matches] = xlsread(matches);
    seeds = unique(cell2mat(seed(:,1)));
    %matches = unique(cell2mat(matches));
    groups = {};
    
    for i = seeds'
        mask1 = i == cell2mat(seed(:,1));
        names = seed(:,2);
        group = names(mask1);
        groups = [groups, {group}];
    end
    
    matches = cell2mat(matches);
    matches = matches';
    matches = matches(1:end/4);
    kike = {};
    
    for j = 1:length(group)
        for k = matches
            grupito = groups{k};
            team = grupito(j);
            kike = [kike; team];
        end
    end
    
    scores ={};
    for l = 1:length(kike)
        [rowppg, ~] = find(strcmp(ppg,kike{l}));
        PPG = cell2mat(ppg(rowppg,2));
        [rowoppg, ~] = find(strcmp(oppg,kike{l}));
        OPPG = cell2mat(oppg(rowoppg,2));
        [rowwpct, ~] = find(strcmp(wpct,kike{l}));
        WPCT = cell2mat(wpct(rowwpct,2));
        [rowseed, ~] = find(strcmp(seed,kike{l}));
        SEED = cell2mat(seed(rowseed,1));
        score = (1/6)*(PPG-OPPG)/PPG + (1/6)*WPCT + (2/3)*(16-SEED)/15;
        scores = [scores; {score}];
    end
    
    tournament = [kike];
    round = kike;
    enrique = scores;
    round_count = 0;
    while length(round) ~= 1
        [new_round, new_score] = helperMadness(round, enrique);
        round_count = round_count+1;
        cincoEstrella = cell(64,1);
        
        if round_count == 1
            first_pos = 2;
            rate = 64/length(new_round);
            cincoEstrella(first_pos:rate:end) = new_round; 
        else
            first_pos = first_pos + 2^(round_count-2);
            rate = 64/length(new_round);
            cincoEstrella(first_pos:rate:end) = new_round; 
        end
        tournament = [tournament, cincoEstrella];
        round = new_round;
        enrique = new_score;
    end

end

function [new_round, new_score] = helperMadness(round, score)

    len = length(round);
    odd = 1:2:len;
    even = 2:2:len;
    new_round = {};
    new_score = {};
    
    for pastrana = 1:length(odd)
        odd_play = odd(pastrana);
        even_play = even(pastrana);
        team1Score = cell2mat(score(odd_play));
        team2Score = cell2mat(score(even_play));
        
        if playGame(team1Score, team2Score) == 1
            winner = round(odd_play);
            new_round = [new_round; winner];
            new_score = [new_score; score(odd_play)];
            
        else
           winner = round(even_play);
           new_round = [new_round; winner];
           new_score = [new_score; score(even_play)];
        end
    end
end


