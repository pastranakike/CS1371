function [out] = cellSearch(cell, idx)

    for i = 1:length(idx)
        if iscell(cell)
            cell = cell{idx(i)};
        else
            cell = cell(idx(i));
        end
    end
            
out = cell;

end

