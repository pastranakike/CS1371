function [date] = findDateLocation(first, second, rating, preference, personal)
    rating1 = rating(1,:);
    rating2 = rating(2,:);
    zero1 = rating1 ~= 0;
    zero2 = rating2 ~= 0;
    avg1 = sum(rating1(zero1))./length(rating1(zero1));
    avg2 = sum(rating2(zero2))./length(rating2(zero2));
    avgtotal = [avg1, avg2];
    %personal = personal(1:end);
    
    if preference == ['+';'-']
        date = first;
    elseif preference == ['-';'+']
        date = second;
    elseif preference == ['+';'+']
        if avgtotal(1) > avgtotal(2)
            date = first;
        elseif avgtotal(1) < avgtotal(2)
            date = second;
        elseif avgtotal(1) == avgtotal(2)
            if personal(1) > personal(2)
                date = first;
            elseif personal(1) < personal(2)
                date = second;
            else 
                date = sprintf('You need to make a selection dude!');
            end
        end
    else 
        if max(avgtotal) == avg1 && avg1 >= 7.5
            date = first;
        elseif max(avgtotal) == avg2 && avg2 >= 7.5
            date = second;
        else
            if personal(1) > personal(2)
                date = first;
            elseif personal(1) < personal(2)
                date = second;
            else
                date = sprintf('You need to make a selection dude!');
            end
        end
    end
end

