function [localMin] = findLocalMin(pol,lowx,upperx,xi)
    [variable,pol] = strtok(pol,'=');
    [~,variable] = strtok(variable,'(');
    var = variable(2);
    pol = pol(2:end);
    pol = pol(pol~=32);
    ca = strsplit(pol,'+');
    coeff = [];
    degree = [];
    
    for i = 1:length(ca)
        mask_var = ca{i} == var;
        if mask_var(1)==true
            new_coeff = 1;
        elseif all(mask_var==false)
            new_coeff = str2double(ca{i});
        else
            cell = ca{i};
            new_coeff = str2double(cell(1:find(mask_var)-1));
        end
        mask_degree = ca{i} == '^';
        if all(mask_degree==false) && all(mask_var==false)
            exp = 0;
        elseif all(mask_degree==false)
            exp = 1;
        else
            cell = ca{i};
            exp = str2double(cell(find(mask_degree)+1:end));
        end
        coeff = [coeff, new_coeff];
        degree = [degree exp];
    end

    coeff_pos = zeros(1,degree(1)+1);
    coeff_pos(degree+1) = coeff;
    func_pol = fliplr(coeff_pos);
    
    x_axis = linspace(lowx,upperx,100);
    y_axis = polyval(func_pol,x_axis);
    plot(x_axis,y_axis,'b')
    ylabel(sprintf('f(%s)',var))
    xlabel(var)
    originalAxis = axis;
    
    %TAKE DERIVATIVE
    degree4derivative = max(degree):-1:0;
    coeff_derivative = func_pol.*degree4derivative;
    derivative = coeff_derivative(1:end-1);
    m_initial = polyval(derivative,xi);
    count = 0;
    mi = polyval(derivative,xi);
    change = 1;
    %xf = xi; %IMPORTANT THIS WILL ACTIVATE MY FIRST LOOP
    
    while abs(mi)>0.1
        
        yi = polyval(func_pol,xi);
        mi = polyval(derivative,xi);
        bi = yi-mi*xi;
        eq1 = [mi bi];
        x1 = xi-5:xi+5;
        y1 = polyval(eq1,x1);
        hold on
        plot(x1,y1,'r')
        axis(originalAxis)
        count = count+1;
        
        if sign(mi) == sign(m_initial)
            if sign(mi) == 1
                xf = xi;
                xi = xi - change;
                m_initial = mi;
            elseif sign(mi) == -1
                xf = xi;
                xi = xi + change;
                m_initial = mi;
            end
        else
            change = change*0.5;
                if sign(mi) == 1
                    xf = xi;
                    xi = xi - change;
                    m_initial = mi;
                elseif sign(mi) == -1
                    xf = xi;
                    xi = xi + change;
                    m_initial = mi;
                end
        end
    end
    if polyval(eq1,xi)==yi
        xi = xi;
    else
        xi = xf;
    end
    localMin = round([xi, yi],3);
    end

