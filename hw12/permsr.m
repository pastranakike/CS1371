function P = permsr(n)
% subfunction to help with recursion

P = 1;

for nn=2:n
    
    Psmall = P;
    m = size(Psmall,1);
    P = zeros(nn*m,nn);
    
    P(1:m, 1) = nn;
    P(1:m, 2:end) = Psmall;
    
    for i = nn-1:-1:1
        reorder = [1:i-1, i+1:nn];
        % assign the next m rows in P.
        P((nn-i)*m+1:(nn-i+1)*m,1) = i;
        P((nn-i)*m+1:(nn-i+1)*m,2:end) = reorder(Psmall);
    end
    
end
perms