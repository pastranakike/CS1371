function [newArray] = arrReplace(arr1, arr2, obj)


    %logical vector where is true that arr1 is equal to the obj
    index = arr1 == obj;
    %transform the logical vector in indexes
    index = find(index);
    %change the indexes from horizontal to vertical
    transIndex = index';
    %Replace the numbers from arr2 to arr1
    arr1(transIndex) = arr2(transIndex);
    %Define the output
    newArray = arr1;
    

end

