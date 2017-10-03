function greenshield(data)
    [~,~,data]=xlsread(data);
    mask_flow = find(strcmp(data(1,:),'flow rate (q)'));
    flow_rate = [data{2:end,mask_flow}];
    mask_speed = find(strcmp(data(1,:),'speed (u)'));
    speed = [data{2:end,mask_speed}];
    mask_den = find(strcmp(data(1,:),'density (k)'));
    den = [data{2:end,mask_den}];
    
    subplot(2,2,1)
    plot(den, speed,'k*')
    axis([0 max(den) 0 max(speed)])
    ylabel('Speed, u [mi/hr]')
    xlabel('Density, k [veh/mi/ln]')
    coeff1 = polyfit(den,speed,1);
    eq1 = sprintf('u = %0.3fk + %0.3f',coeff1(1),coeff1(2));
    text(3,5,eq1)
    [den_sort, inx_den] = sort(den);
    speed_alt = polyval(coeff1,den);
    hold on
    plot(den_sort,speed_alt(inx_den),'g-')
    critical_speed = max(speed)./2;
    speed_point = abs(sort(speed)-critical_speed);
    cr_speed1 = min(speed_point)+critical_speed;
    cr_speed2 = critical_speed-min(speed_point);
    if any(cr_speed1==speed) && any(cr_speed2==speed)
        cr_speed = cr_speed1;
    elseif any(cr_speed1==speed)
        cr_speed = cr_speed1;
        inx_speed = cr_speed1==speed;
    else 
        cr_speed = cr_speed2;
        inx_speed = cr_speed2==speed;
    end
    critical_den = den(inx_speed);
    plot([critical_den,critical_den],[0,cr_speed],'y')
    plot([critical_den,max(den)],[cr_speed,cr_speed],'y')
    box off
    
    i = coeff1(2);
    r = coeff1(1);
    R = abs(r);
    
    
    subplot(2,2,3)
    plot(den, flow_rate,'k*')
    axis([0 max(den) 0 max(flow_rate)])
    ylabel('Flow Rate, q [veh/hr/ln]')
    xlabel('Density, k [veh/mi/ln]')
    flow_alt = polyval([r i 0],den);
    hold on
    plot(den_sort,flow_alt(inx_den),'r')
    if r > 0
        eq2 = sprintf('q = %0.3fk + %0.3fk^2',i,R);
    else
        eq2 = sprintf('q = %0.3fk - %0.3fk^2',i,R);
    end
    text(10,250,eq2)
    plot([critical_den,critical_den],[0,max(flow_rate)],'y')
    box off
    
    subplot(2,2,2)
    hold on
    plot(flow_rate,speed,'k*')
    axis([0 max(flow_rate) 0 max(speed)])
    ylabel('Speed, u [mi/hr]')
    xlabel('Flow Rate, q [veh/hr/ln]')
    flow_rate_alt = polyval([-1/R i/R 0],speed);
    [sort_speed, inx_spd] = sort(speed);
    hold on
    plot(flow_rate_alt(inx_spd),sort_speed,'c')
    hold on
    plot([0,max(flow_rate)],[cr_speed,cr_speed],'y')
    eq3 = sprintf('q =(%0.3fu - u^2)/%0.3f',i,R);
    text(500,10,eq3)

end

