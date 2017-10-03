function [ prob_apples, prob_oranges ] = applesAndOranges(apples, oranges, G_apples, G_oranges)
    %Ask TA if the result must be in percetange or integer w/o percetange
    bad_apples = apples - G_apples;
    bad_oranges = oranges - G_oranges;
    total = apples + oranges;
    prob_apples = bad_apples ./ total;
    prob_oranges = bad_oranges ./ total;
    prob_apples = round(prob_apples,4) .*100;
    prob_oranges = round(prob_oranges,4) .*100;
    
end

