function [new_sentence] = giraffeCase(old_sentence)
    
    old_sentence = lower(old_sentence);
    old_sentence = old_sentence(old_sentence >= 'a' & old_sentence <= 'z' | old_sentence == 32)
    old_sentence = [old_sentence ' '];
    spaces = old_sentence == ' ';
    index_giraffe = strfind(old_sentence, 'giraffe');
    spaces = find(spaces) - 1;
    old_sentence(spaces) = old_sentence(spaces) + 'A' - 'a';
    old_sentence(index_giraffe:index_giraffe+6) = upper(old_sentence(index_giraffe:index_giraffe+6));
    new_sentence = old_sentence(old_sentence >= 'a' & old_sentence <='z' | old_sentence >= 'A' & old_sentence <= 'Z' );

end

