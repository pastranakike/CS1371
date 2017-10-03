function [action, sheet] = warrenBuffett(data)
    [x, w, c] = xlsread(data);
    [~, symbol_col_idx] = find(strcmp(c,'Symbol'));
    symbol_col = c(:,symbol_col_idx);
    c(:,symbol_col_idx) = [];
    c = [symbol_col, c];
    [~, change_col] = find(strcmp(c,'Change'));
    [~, price_col] = find(strcmp(c,'Price'));
    [~, name] = find(strcmp(c,'Name'));
    per_change = round(cell2mat(c(2:end,change_col))./cell2mat(c(2:end,price_col)).*100,2);
    [~, sort_idx] = sort(per_change, 'descend');
    per_change = num2cell(per_change);
    per_change = ['% Change'; per_change];
    c = [c, per_change];
    top = c(1,:);
    c(1,:) = [];
    c = c(sort_idx,:);
    action = c{1,name};
    sheet = [top; c];
end

