function [ output_args ] = arr2text(arr, name)
    %Initial conditions
    %Create the file
    %Find the size of the arr
    file = fopen(name,'w');
    [r, c] = size(arr);
    len = zeros(r,c);
    
    %Create a arr with the lenght of each number
    for i = 1:r
        for j = 1:c
            lensub = length(num2str(arr(i,j)));
            len(i,j) = lensub;
        end
    end
    
    %Intial condition for the forLoop below, in which I started with a +
    %sign in order to create the correct delimiter between number in the
    %cell
    
    separator = '+';
    maxlength = max(len);
    
    for k = 1:length(maxlength)
        guiones = repmat('-',1,maxlength(k));
        separator = [separator guiones '+' ];
    end
    
    len_sep = length(separator);
    mask1 = separator == '+';
    indxmask1 = find(mask1);
    
    %For this loop, I am going to work each row separetaly becaus ethat
    %will make my fprintf easier
    for l = 1:r
        numbers = arr(l,:);
        almost = '|';
        
     %In this for loop, I separated each number of my vector 
     
            for k = 1:length(numbers)
            casialmost = num2str(numbers(k));
            num_spaces = maxlength(k)-length(num2str(numbers(k)));
            spaces = repmat(' ',1,num_spaces);
            almost =[almost casialmost spaces '|'];
            end

        fprintf(file,'%s\n%s\n',separator,almost);

    end
    
    fprintf(file,'%s',separator);
    fclose(file);    
        

end

