function [out1] = structSort(st)
    field = fieldnames(st);
    len_field = [];
    for i = 1:length(field)
        len = length(field{i});
        len_field = [len_field, len];
    end
    [~, inx_max] = max(len_field);
    content_field = {st.(field{inx_max})};
    cont_len = [];
    for j = 1:length(content_field)
        len2 = length(content_field{j});
        cont_len = [cont_len, len2];
    end
    [~, inx_field] = sort(cont_len,'descend');
    out1 = st(inx_field);
end

