function [distancia] = cartDist(x1,y1,x2,y2)
%Distance between two points
    dx = x2 - x1;
    dy = y2 - y1;
    hypsq = dx.^2 +dy.^2;
    distancia = sqrt(hypsq);
    distancia = round(distancia*100)./100;
end
