function [Hr2, Min2] = clockHands(c_hours, c_minutes, min1)

    totalmin = c_minutes + min1;
    totalhour = floor(totalmin ./ 60);
    Hr2 = c_hours + totalhour;
    Hr2 = mod(Hr2,12);
    Min2 = mod(totalmin , 60);
    
end

