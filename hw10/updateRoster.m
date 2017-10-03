function [update] = updateRoster(old, data, remove)
    data(1,:) = [];
    number2remove = length(remove);
    
    names2update = data(:,1);
    data(:,1) = [];
    update = old;
    
    for j = 1:length(names2update)
        n = names2update{j};
        update = setfield(update,n, data(j,:)); 
    end 
    
    for i = 1:number2remove
        name = remove{i};
        update = rmfield(update, name);
    end
    
    new_names = fieldnames(update);
 
    for k = 1:length(new_names)
        hall = new_names{k};
        mask1 = strcmp(names2update, hall);
        if ~any(mask1) 
            update.(hall) = [update.(hall), 'Hall of Fame'];
        end
    end
    
end

