function [decoded] = decodeASCII(code, ver, hor, border, width)
%     This is a test simpler to understand
%     code = [1 2 3 4 1 2 3 4; 5 6 7 8 5 6 7 8; 9 10 11 12 9 10 11 12; 13 14 15 16 13 14 15 16]
%     code = [1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16]
%     ver = 2;
%     hor = 2;
%     border = '@';
%     width = 1;
    %code = char(code);
    %Find size of array
    code = char(code);
    [x, y] = size(code);
    %Flip vertically first quadrant
    code(1:x/2,y/2+1:end) = code(x/2:-1:1,y/2+1:end);
    %Switch lower quads
    thirdquad = code(x/2+1:end,1:y/2);
    quadquad = code(x/2+1:end,y/2+1:end);
    code(x/2+1:end,1:y/2) = quadquad;
    code(x/2+1:end,y/2+1:end) = thirdquad;
    %Resizing
    idx = floor(linspace(1, x + (ver - 1)/ver, x*ver));
    idy = floor(linspace(1, y + (hor - 1)/hor, y*hor));
    code = code(idx, idy);
    %Newsize
    [x, y] = size(code);
    %Put the border
    xborder = border*ones(width,y);
    [sx, sy] = size(xborder);
    yborder = border*ones(x+2*sx, width);
    code = [xborder; code; xborder];
    code = [yborder code yborder];
    decoded = code;
end
    
    

    
    
    





