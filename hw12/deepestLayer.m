function [content] = deepestLayer(cellArr)
    if iscell(cellArr)
        content = cellArr{1};
        if iscell(content)
            content = deepestLayer(content);
        end
    else
        content = cellArr;
    end
end

