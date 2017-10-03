function [new_str] = gorillaCase(str)
    str = str(str >= 'a' & str <= 'z' | str >= 'A' & str <= 'Z' | str == 32);
    
    count = 0;
    spaces = str == 32;
    sentence = str(1:end);
    sentence(spaces) = 32;
    words = []

    while ~isempty(str)
        
        [word, remi] = strtok(str);
        preword = word;
        count_word = 0;
 
        while ~isempty(preword)
            preword = preword(1:end-1);
            count_word = count_word + 1;   
        end
        
        if rem(count_word,2) ~= 0
            word = lower(word)
            word(1:2:end) = upper(word(1:2:end));
            
        elseif rem(count_word,2) == 0
            word = lower(word);
            
        end       
        
    words = [words word];
    count = 1 + count;
    str = remi;
    end
    
    sentence(~spaces) = words;
    new_str = char(sentence);

end

