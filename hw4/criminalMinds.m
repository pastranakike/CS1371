function [guilty] = criminalMinds(s1, s2, s3, s4)
    comparison1 = [s1==s2 s1==s3 s1==s4];
    comparison2 = [s2==s1 s2==s3 s2==s4];
    comparison3 = [s3==s1 s3==s2 s3==s4];
    comparison4 = [s4==s1 s4==s2 s4==s3];
    sum1 = sum(comparison1);
    sum2 = sum(comparison2);
    sum3 = sum(comparison3);
    sum4 = sum(comparison4);
    veredict = [sum1 sum2 sum3 sum4];
    [veredict, liar] = sort(veredict);
    liar = num2str(liar(1));
    guilty = sprintf('Suspect #%s is lying.',liar);

end

