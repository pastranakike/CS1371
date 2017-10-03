function asciiBurger(customer)

    menu = fopen('menu.txt');
    
    [name, order] = strtok(customer, ',');
    result = fopen([name '_order.txt'],'w');
    new_order = [];
    
    while ~isempty(order)
        [element, rest] = strtok(order,',');
        new_order = [new_order element ' '];
        order = rest;
    end

        new_order = new_order(1:end-1);
        
        if sum(new_order) == 0
            total = 0.00;
            fprintf(result,'Price: $%0.2f',total);
            fclose(result);
            fclose(menu);
            
        else
            order = strsplit(new_order);
            total_a_cobrar = order;

            if strcmp(order{1},'bun')
                order{end+1} = 'bun';

            end

            for i = 1:length(order)
                fclose(menu);
                ingridient = ['_' order{i}];
                menu = fopen('menu.txt');
                line = fgetl(menu);

                while ischar(line)

                    if strcmp(line, ingridient) == 1
                        line = fgetl(menu);

                        while line(1) ~= '_' && ischar(line)
                            fprintf(result,'%s\n',line);
                            line = fgetl(menu);

                        end

                    break
                    end

                line = fgetl(menu);

                end
            end

            prices = fopen('prices.txt');
            line_prices = fgetl(prices);
            precios = [];
            while ischar(line_prices)
                precios = [precios line_prices ','];
                line_prices = fgetl(prices);
            end

            precios = precios(1:end-1);
            mask1 = precios == ' ';
            precios = precios(~mask1);
            mask2 = precios == ',' | precios == ':';
            precios(mask2) = ' ';
            mask3 = precios == '$';
            precios = precios(~mask3);
            precios = strsplit(precios);
            nombre = precios(1:2:end);
            valor = precios(2:2:end);

            inx =[];
            for j = 1:length(total_a_cobrar)
                mask = find(strcmp(nombre,total_a_cobrar{j}));
                inx = [inx mask];
            end

            almost_total = valor(inx);
            costo = [];

            for k = 1:length(almost_total)
                costopering = almost_total{k};
                costo = [costo costopering ' '];
            end

            costo = costo(1:end-1);
            costo = str2num(costo);
            total = sum(costo);

            fprintf(result,'Price: $%0.2f',total); 
            fclose(menu);
            fclose(result);
        end
  
end

