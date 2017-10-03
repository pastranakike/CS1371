function [acceleration_1] = gravity(mass_1, mass_2, distance)
    G_constant = 6.67e-11;
    masses = mass_1 .* mass_2;
    force = G_constant .* (masses ./ distance.^2);
    acceleration_1 = force ./ mass_1;
    acceleration_1 = round(acceleration_1, 2);
end

