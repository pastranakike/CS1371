function [compatibility] = starCrossed(bday1, bday2, table)

    [month1, day1] = strtok(bday1);
    [month2, day2] = strtok(bday2);
    day1 = str2double(day1);
    day2 = str2double(day2);
    signs = {('Aquarius'),('Pisces'),('Aries'),('Taurus'),('Gemini'),('Cancer'),('Leo'),('Virgo'),('Libra'),('Scorpio'),('Sagitarius'),('Capricorn')};
    
    
%Find the sign of the first person
    if strcmp(month1,'January') && day1 >= 20 || strcmp(month1,'Febraury') && day1 <= 18
        sign1 = 1;
    elseif strcmp(month1,'Febraury') && day1 >= 19 || strcmp(month1,'March') && day1 <= 20
        sign1 = 2;
    elseif strcmp(month1,'March') && day1 >= 21 || strcmp(month1,'April') && day <= 19
        sign1 = 3;
    elseif strcmp(month1,'April') && day1 >= 20 || strcmp(month1,'May') && day1 <= 20
        sign1 = 4;
    elseif strcmp(month1,'May') && day1 >= 21 || strcmp(month1,'June') && day1 <= 20
        sign1 = 5;
    elseif strcmp(month1,'June') && day1 >= 21 || strcmp(month1,'July') && day1 <= 22
        sign1 = 6;
    elseif strcmp(month1,'July') && day1 >= 23 || strcmp(month1,'August') && day1 <= 22
        sign1 = 7;
    elseif strcmp(month1,'August') && day1 >= 23 || strcmp(month1,'September') && day1 <= 22
        sign1 = 8;
    elseif strcmp(month1,'September') && day1 >= 19 || strcmp(month1,'October') && day1 <= 22
        sign1 = 9;
    elseif strcmp(month1,'October') && day1 >= 23 || strcmp(month1,'November') && day1 <= 21
        sign1 = 10;
    elseif strcmp(month1,'November') && day1 >= 22 || strcmp(month1,'December') && day1 <= 21
        sign1 = 11;
    elseif strcmp(month1,'December') && day1 >= 22 || strcmp(month1,'January') && day1 <= 19
        sign1 = 12;
    end
 
%Find the sign of the second person
    if strcmp(month2,'January') && day2 >= 20 || strcmp(month2,'Febraury') && day2 <= 18
        sign2 = 1;
    elseif strcmp(month2,'Febraury') && day2 >= 19 || strcmp(month2,'March') && day2 <= 20
        sign2 = 2;
    elseif strcmp(month2,'March') && day2 >= 21 || strcmp(month2,'April') && day2 <= 19
        sign2 = 3;
    elseif strcmp(month2,'April') && day2 >= 20 || strcmp(month2,'May') && day2 <= 20
        sign2 = 4;
    elseif strcmp(month2,'May') && day2 >= 21 || strcmp(month2,'June') && day2 <= 20
        sign2 = 5;
    elseif strcmp(month2,'June') && day2 >= 21 || strcmp(month2,'July') && day2 <= 22
        sign2 = 6;
    elseif strcmp(month2,'July') && day2 >= 23 || strcmp(month2,'August') && day2 <= 22
        sign2 = 7;
    elseif strcmp(month2,'August') && day2 >= 23 || strcmp(month2,'September') && day2 <= 22
        sign2 = 8;
    elseif strcmp(month2,'September') && day2 >= 19 || strcmp(month2,'October') && day2 <= 22
        sign2 = 9;
    elseif strcmp(month2,'October') && day2 >= 23 || strcmp(month2,'November') && day2 <= 21
        sign2 = 10;
    elseif strcmp(month2,'November') && day2 >= 22 || strcmp(month2,'December') && day2 <= 21
        sign2 = 11;
    elseif strcmp(month2,'December') && day2 >= 22 || strcmp(month2,'January') && day2 <= 19
        sign2 = 12;
    end
    
    %Find the string for the sign
    sign1_name = char(signs(sign1));
    sign2_name = char(signs(sign2));
    
    if table(sign1,sign2)
        compatibility = sprintf('A %s and a %s? Your stars are aligned! You are destined to be together.',sign1_name,sign2_name);
    else 
        compatibility = sprintf('Your stars are crossed...a %s and a %s can never be together.',sign1_name,sign2_name);
    end
    
end

