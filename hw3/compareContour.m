function [contour] = compareContour(vec_1, vec_2)
    %Contour of vec_1
    difference_1 = diff(vec_1);
    %Contour of vec_2
    difference_2 = diff(vec_2);
    %Describe if the contour is increasing or decreasing
    signs_1 = difference_1./abs(difference_1);
    signs_2 = difference_2./abs(difference_2);
    %Determine if the contours follow the same pattern
    contour = isequaln(signs_1,signs_2)

end

