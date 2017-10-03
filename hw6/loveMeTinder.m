function [action] = loveMeTinder(personal_data, profile_data)
    [name, rem] = strtok(profile_data,',');
    [age, rem] = strtok(rem,',');
    [distance, rem] = strtok(rem,',');
    [college, rem] = strtok(rem,',');
    [picture, rem] = strtok(rem,',');
    [biography, ~] = strtok(rem,',');
    age = str2double(age);
    distance = str2double(distance);
    my_age = personal_data(1);
    my_maxd = personal_data(2);
    
    if age > my_age/2+7 && my_age*2-7 > age
        if distance <= my_maxd
            if strcmp(college,'GT') || strcmp(college,'Georgia Tech') || strcmp(college,'Georgia Institute of Technology')
                action = sprintf('Super Like %s''s picture', name);
            elseif strcmp(college,'u(sic)ga')
                action = sprintf('Swipe left on %s''s picture', name);
            else
                if strcmp(picture,'selfie') && biography(1) ~= '"'
                    action = sprintf('Swipe right on %s''s picture', name);
                elseif strcmp(picture,'selfie') == 0 && biography(1) == '"'
                    action = sprintf('Swipe right on %s''s picture', name);
                elseif strcmp(picture,'selfie') && biography(1) == '"'
                    action = sprintf('Swipe left on %s''s picture', name);
                else
                    action = sprintf('Swipe right on %s''s picture', name);
                end
            end   
        else
          action = sprintf('Swipe left on %s''s picture', name);
        end    
    else
        action = sprintf('Swipe left on %s''s picture', name);
    end
     
end

