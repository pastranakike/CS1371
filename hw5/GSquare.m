function [final] = GSquare(grades, comments, mode)
%Divide the first submission from the resubmission
    realHW = grades(1:2:end-2);
    ResubHW = grades(2:2:end-1);
%Create a table with both HW and resub in which each HW will have its resub
%below in the same column 
    table = [realHW; ResubHW];
%Sum the columns of the table to take out the average (divide all of them
%by 2)
    sum_table = sum(table);
    average = sum_table./2;
%Create a mask than will find where the HW is greater thatn its resub
    maskAverage = find(table(1,:) > table(2,:));
%Change the values where the average is less than the first submission
    average(maskAverage) = realHW(maskAverage);
%Find the max between the HW and its resub
    max_table = max(table);
%create an array with the max and avg in which the first letter of each
%word is going to be in the first row of the new array
    mode = mode';
%These two lines will delete everything but the first letters of 'avg' &
%'max" and also will give me the mask for Max and Avg
    maskMaxMode = find(mode(1,:)== 'm');
    maskAvgMode = find(mode(1,:) == 'a');
%Create a vector of zeros which length is the numbers of HW of the semester
    vector = zeros(1, length(maskMaxMode) + length(maskAvgMode));
%Substitute the vector: the first one will substitute the value of zero for the max value of each
%column of my table (HW or resub) and the second one is going to do the same with the average depeding of my third input 
    vector(maskMaxMode) = max_table(maskMaxMode);
    vector(maskAvgMode) = average(maskAvgMode);
%Add comment grade
    vector = vector + comments./10;
%Drop lowest HW
    min_vector = min(vector);
    min_vector = find(vector == min_vector);
    vector1 = vector;
    vector1(min_vector(1)) = grades(end);
    ExtraCredit = vector > vector1;
    vector1(ExtraCredit) = vector(ExtraCredit);
%Voilá! final average
    final = sum(vector1)./length(vector1);
    final = round(final,1);

end

