function [word] = int2word(number)
    one2nineteen = {'one','two','three','four','five','six','seven','eight','nine','ten','eleven','twelve','thirteen','fourteen','fiveteen','sixteen','seventeen','eighteen','nineteen'};
    ten2hundred = {'','twenty','thirty','fourty','fifty','sixty','seventy','eighty','ninety'};
    
    real = number;
    number = abs(number);
    if number == 0
        word = 'zero';
    else
        if number <= 19
            word = one2nineteen{number};
            
        elseif number > 19 && number <= 99
            number = num2str(number);
            first = str2num(number(1));
            second = str2num(number(2));
            word1 = ten2hundred{first};
            
            if second == 0
                word = word1;
            else
                word2 = one2nineteen{second};
                word = [word1 '-' word2];
            end
            
        elseif number >= 100 && number <= 999
            
            number = num2str(number);
            first = str2num(number(1));
            second = str2num(number([2,3]));
            word1 = one2nineteen{first};
            word1 = [word1 ' ' 'hundred'];
            
            if second == 0
                word = word1;
                
            else
                new = num2str(second);
                pana = second;
                first = str2num(new(1));
                second = str2num(new(2));
                
                if first == 0
                    word2 = one2nineteen{second};
                    word = [word1 ' ' 'and' ' ' word2];
                elseif second == 0
                    word2 = ten2hundred{first};
                    word = [word1 ' ' 'and' ' ' word2];
                elseif pana <= 19
                    word2 = one2nineteen{pana}; 
                    word = [word1 ' ' 'and' ' ' word2];
                else
                    word2 = ten2hundred{first};
                    word3 = one2nineteen{second};
                    word = [word1 ' ' 'and' ' ' word2 '-' word3];    
                end            
            end
        end
    end
    
    if real < 0
        word = ['negative' ' ' word];
    end
end
switch