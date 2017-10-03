function [report] = scoreBoard(names, data)
    %Prepare the data
    score1 = data(1,:);
    score2 = data(2,:);
    time = data(3,:);
    cum_score1 = cumsum(score1);
    cum_score2 = cumsum(score2);
    time(end) = 40;
    domination1 = 0;
    domination2 = 0;
    %Find out which team dominates each time interval
    for i=1:length(score1)
        if i==1
            if cum_score1(i)<cum_score2(i)
                domination2 = domination2+time(i);
            else
                domination1 = domination1+time(i);
            end
        else
            if cum_score1(i)<cum_score2(i)
                domination2 = domination2+diff([time(i-1),time(i)]);
            else
                domination1 = domination1+diff([time(i-1),time(i)]);
            end 
        end
    end
    points = [cum_score1(end), cum_score2(end)];
    %Set the conditions for the output
    if domination1 > 30 && cum_score1(end) > cum_score2(end)
        report = sprintf('%s totally dominated this game and took home the win from %s!',names{1},names{2});
    elseif domination2 > 30 && cum_score2(end) > cum_score1(end)
        report = sprintf('%s totally dominated this game and took home the win from %s!',names{2},names{1});
    elseif domination1 > 30 && cum_score1(end) < cum_score2(end)
        report = sprintf('%s totally dominated this game but %s stole the win tonight!',names{1},names{2});
    elseif domination2 > 30 && cum_score2(end) < cum_score1(end)
        report = sprintf('%s totally dominated this game but %s stole the win tonight!',names{2},names{1});
    elseif domination1 < 30 && domination2 < 30
        mask1 = points==max(points);
        report = sprintf('Although a fairly evenly matched game, %s came out on top over %s tonight!',names{mask1},names{~mask1});
    end
    %Plotting
    plot(time,cum_score1,'r');
    hold on
    title(sprintf('%s vs. %s',names{1},names{2}));
    xlabel('minutes');
    ylabel('points');
    xlim([0,40]);
    ylim([0, max(points)+5]);
    hold on
    plot(time,cum_score2,'b');
    hold on
    plot(20*ones(1,max(points)+6),[0:(max(points)+5)],'k');
    
    

end

