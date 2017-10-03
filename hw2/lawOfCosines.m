function [ c ] = lawOfCosines( a, b, angle_c )
       
    cos_value = cosd(angle_c);
    mult_1 = 2 .* a .* b .* cos_value;
    c_sq = a.^ 2 + b.^ 2 - mult_1;
    c = sqrt(c_sq);
    c = round(c .* 100)./100;

end

