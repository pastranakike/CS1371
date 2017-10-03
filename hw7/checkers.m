function [pos] = checkers(board)

    [r, c] = size(board);
    newcol = zeros(r+4,2);
    newrow = zeros(2,c);
    newboard = [newrow; board; newrow];
    newboard = [newcol, newboard, newcol];
    [red_row, red_col] = find(newboard == 'r');
    [king_row, king_col]  = find(newboard == 'R');
    count = 0;
    
    while ~isempty(red_row)
        a = red_row(1);
        b = red_col(1);
        
        diag1 = [a - 1, b + 1];
        diag11 = [a - 2, b + 2];
        diag2 = [a - 1, b - 1];
        diag21 = [a - 2, b - 2];
        
        if newboard(diag1(1),diag1(2)) == 'b' && newboard(diag11(1), diag11(2)) == 'O'
            count = count + 1;
        end    
        if newboard(diag2(1),diag2(2)) == 'b' && newboard(diag21(1), diag21(2)) == 'O'
            count = count + 1;
        end
        red_row(1) = [];
        red_col(1) = [];
    end
      
    while ~isempty(king_row)
        a = king_row(1);
        b = king_col(1);
    
        diag1 = [a - 1, b + 1];
        diag11 = [a - 2, b + 2];
        diag2 = [a - 1, b - 1];
        diag21 = [a - 2, b - 2];
        diag3 = [a + 1, b + 1];
        diag31 = [a + 2, b + 2];
        diag4 = [a + 1, b - 1];
        diag41 = [a + 2, b - 2];


        if newboard(diag1(1),diag1(2)) == 'b' && newboard(diag11(1), diag11(2)) == 'O'
         count = count + 1;
        end    
        if newboard(diag2(1),diag2(2)) == 'b' && newboard(diag21(1), diag21(2)) == 'O'
         count = count + 1;
        end   
        if newboard(diag3(1), diag3(2)) == 'b' && newboard(diag31(1), diag31(2)) == 'O'
         count = count + 1;
        end    
        if newboard(diag4(1), diag4(2)) == 'b' && newboard(diag41(1), diag41(2)) == 'O'
         count = count + 1;   
        end    
        king_row(1) = [];
        king_col(1) = [];
    end
    
    pos = count;
end
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
%      for a = red_row
%          for b = red_col
%          position_red = [a,b];
%          while ~isempty(position_red)
%          position = position_red(end,:);
%          diag1 = [position(1) - 1, position(2) + 1];
%          diag11 = [position(1) - 2, position(2) + 2];
%          diag2 = [position(1) - 1, position(2) - 1];
%          diag21 = [position(1) - 2, position(2) - 2];
% 
%          
%          if newboard(diag1(1),diag1(2)) == 'b' && newboard(diag11(1), diag11(2)) == 'O'
%              count = count + 1;
%          end    
%          if newboard(diag2(1),diag2(2)) == 'b' && newboard(diag21(1), diag21(2)) == 'O'
%              count = count + 1;
%          end
%          end
%          position_red = position_red(end-1,:);
%          end
%      end
%     
%      
%      for e = king_row
%          for d = king_col
%          positionK = [e,d];
%          
%          while ~isempty(positionK)
%              position = positionK(end,:);
%          diag1 = [position(1) - 1, position(2) + 1];
%          diag11 = [position(1) - 2, position(2) + 2];
%          diag2 = [position(1) - 1, position(2) - 1];
%          diag21 = [position(1) - 2, position(2) - 2];
%          diag3 = [position(1) + 1, position(2) + 1];
%          diag31 = [position(1) + 2, position(2) + 2];
%          diag4 = [position(1) + 1, position(2) - 1];
%          diag41 = [position(1) + 2, position(2) - 2];
% 
%          
%          if newboard(diag1(1),diag1(2)) == 'b' && newboard(diag11(1), diag11(2)) == 'O'
%              count = count + 1;
%          end    
%          if newboard(diag2(1),diag2(2)) == 'b' && newboard(diag21(1), diag21(2)) == 'O'
%              count = count + 1;
%          end   
%          if newboard(diag3(1), diag3(2)) == 'b' && newboard(diag31(1), diag31(2)) == 'O'
%              count = count + 1;
%          end    
%          if newboard(diag4(1), diag4(2)) == 'b' && newboard(diag41(1), diag41(2)) == 'O'
%              count = count + 1;   
%          end
%          positionK = positionK(end-1,:);
%          end
%          end
%      end
%      
%      
% pos = count;



