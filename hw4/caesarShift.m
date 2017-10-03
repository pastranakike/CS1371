function [str_encoded] = caesarShift(str, shift)
    
    spaces = find(str == 32);
    str = upper(str);
    even_odd = mod(str,2);
    even_odd(spaces) = 32;
    even = find(even_odd == 0);
    odd = find(even_odd == 1);
    str(even) = mod(str(even)+shift-64,26)+64;
    str(odd) = mod(str(odd)-shift-64,26)+64;
    str(str==64) = 90;
    str(str=='J') = 'I';
    str(str=='U') = 'V';
    consonant = str(str~='A' & str~='E' & str~='I' & str~='O' & str~=32); 
    len = num2str(length(consonant));
    str_encoded = [str len];

end

