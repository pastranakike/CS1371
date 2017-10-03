function [out] = spaceship(data, dist)
    time = data(1,:);
    temp = data(2,:);
    speed = data(3,:);
    distance = cumtrapz(time, speed);  
    distancia = dist - distance;
    dist1260 = interp1(temp,distancia,1260,'linear');
    dist2000 = interp1(temp,distancia,2000,'linear','extrap');
    if dist2000 > 0
        out = sprintf('The spaceship''s warning alarm sounded %0.2f meters from the Earth. Unfortunately, the ship did not make it.',dist1260);
    else
        out = sprintf('The spaceship''s warning alarm sounded %0.2f meters from the Earth. Luckily, the ship landed safely!',dist1260);
    end
end


