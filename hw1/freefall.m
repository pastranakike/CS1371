function [F_pos, F_vel] = freefall(time)
%Final position and velocity when a object is dropped freefall
    acc = 9.807;
    %Ask TA how to change the numbers of decimals - Fixed
    F_pos = (acc.*time.^2)./2;
    F_pos = round(F_pos,3);
    
    F_vel = (acc.*time);
    F_vel = round(F_vel,3);
end