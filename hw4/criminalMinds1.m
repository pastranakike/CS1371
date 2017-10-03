function [guilty] = criminalMinds1(s1, s2, s3, s4)
    suspects = [s1;s2;s3;s4];
    diffsus = diff(suspects);
    row = find(diffsus,1);
    guilty = row
end