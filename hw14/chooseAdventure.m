function chooseAdventure(adv)
    dvt = fopen(adv);
    newadv = fopen([adv(1:end-4),'_chAdv.txt'],'w');
    line = fgetl(dvt);
    while ~any(line=='<') && ischar(line)
        fprintf(newadv,'%s\n',line);
        line = fgetl(dvt);
    end
    if any(line=='<')
        [rest, code] = strtok(line,'<');
        fprintf(newadv,'%s\n',rest);
        if ~any(code == '>')
            while ~any(line == '>') && ischar(line)
                line = fgetl(dvt);
                code =  [code line];
            end
        end
        code = code(1:find(code=='>'));
        code = code(2:end-1);
        mask = find(code=='|');
        filename = code(1:mask(1)-1);
        linenumber = str2double(code(mask(1)+1:mask(2)-1));
        character = str2double(code(mask(2)+1:end));
        countline = 1;
        newfile = fopen(filename);
        newline = fgetl(newfile);
        countglobal = 1;
        
        while ischar(newline)
            while countline ~= linenumber
                newline = fgetl(newfile);
                countline = countline +1;
            end
            if countglobal == 1
                first = newline(character:length(newline));
                if any(first == '<')
                    [newrestfirst, newcode] = strtok(first,'<');
                    fprintf(newadv,'%s\n',newrestfirst);
                    if ~any(newcode == '>')
                        while ~any(newline == '>')
                            newline = fgetl(newfile);
                            newcode = [newcode newline];
                        end
                        newcode = newcode(1:find(newcode=='>'));
                        mask = find(newcode=='|');
                        fclose(newfile);
                        filename = newcode(2:mask(1)-1);
                        linenumber = str2double(newcode(mask(1)+1:mask(2)-1));
                        character = str2double(newcode(mask(2)+1:end-1));
                        newfile = fopen(filename);
                        newline = fgetl(newfile);
                        countglobal = 0;
                        countline = 1;
                    end
                else
                    fprintf(newadv,'%s\n',first);
                end
            else
                newline = fgetl(newfile);
                if any(newline == '<')
                    [newrest, newcode] = strtok(newline,'<');
                    fprintf(newadv,'%s\n',newrest);
                        if ~any(newcode == '>')
                            while ~any(newline == '>')
                                newline = fgetl(newfile);
                                newcode = [newcode newline];
                            end
                            newcode = newcode(1:find(newcode=='>'));
                            mask = find(newcode=='|');
                            fclose(newfile);
                            filename = newcode(2:mask(1)-1);
                            linenumber = str2double(newcode(mask(1)+1:mask(2)-1));
                            character = str2double(newcode(mask(2)+1:end-1));
                            newfile = fopen(filename);
                            newline = fgetl(newfile);
                            countglobal = 0;
                            countline = 1;
                        end
                elseif ischar(newline)
                    fprintf(newadv,'%s\n',newline);
                end
            end
                countglobal = countglobal +1;
        end
    end
    fclose(newadv);
    fclose(dvt);
end



