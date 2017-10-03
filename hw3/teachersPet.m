function [out1] = teachersPet(grades, f_initial, l_initial)
    [grades, index] = sort(grades);
    % [out1, out2] is going to give you two outputs: one the sorted vector
    % and the other is going to be the initial index for each element in
    % the vector
    new_Index = fliplr(index);
    % It is going to order the vector from biggest to smallest
    out1 = zeros(1, 3*length(grades)-1);
    % Create a zero vector that follows the output guidelines
    out1(1:3:end) = f_initial(new_Index);
    out1(2:3:end) = l_initial(new_Index);
    out1(3:3:end) = ' ';
    %Space needed between each pair of letter
    out1 = char(out1);
    %Transform the output to an array of character
end

    
    
    