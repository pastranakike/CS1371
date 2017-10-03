function [new_week, new_dates] = weeklyCalendar(weekdays, dates, numbers_days)
    %Adding a space for indexing 
    weekdays = [weekdays ' '];
    %The super cool factor that is going to give me the new indexing
    super_cool_factor = mod(numbers_days*2 + [1:14],14);
    %Change the 0 for 14 to avoid indexing problem #MatlabProblems
    super_cool_factor(super_cool_factor == 0) = 14;
    new_week = weekdays(super_cool_factor);
    new_week = new_week(1:end-1);
   

    %This is going to give my new dates
    %Ask what to do for 30 that is giving me 0 #Solved
    new_dates = mod((dates + numbers_days),30);
    %Find the 0 in the vector and change it for 30
    new_dates(new_dates == 0) = 30;
    
    
    
end

