function [score, distance] = matCraft(elevation, terrain, location)
   
%Find the nearest blovk of water
    underwater = elevation <= 0;
    [r, c] = find(underwater);
    x_distance = r' - location(1);
    y_distance = c' - location(2);
    distance = sqrt(x_distance.^2 + y_distance.^2);
    distance = min(distance);
    distance = round(distance, 3);
    
%Find the elevationScore
    montanas = elevation >= 11;
    sum_montanas = sum(elevation(montanas));
    aguita = sum(elevation(underwater));
    elevationScore = sum_montanas + aguita;
    elevationScore = round(elevationScore, 3);
    
%Find the terrainScore
%Remember that the geometric mean includes all the numbers
%Mean average similar to arit average but instead of sum the elements and
%dividing them with their lenght, you need to multiplied them and take the
%nth(length)root of the vector.
    plane = elevation > 0 & elevation < 11;
    terrainScore = terrain(plane)';
    diamond = length(terrainScore);
    geometricMean = nthroot(terrainScore, diamond);
    terrainScore = prod(geometricMean);
    terrainScore = round(terrainScore, 3);
    
%Print my final score with the two previous scores
    score = [elevationScore terrainScore];
  


end

