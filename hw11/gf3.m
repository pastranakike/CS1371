function gf3(name)
    [num,txt,~] = xlsread(name);
    function out = dataGen(in,textinfo,numinfo)
        ind = 1;
        content = textinfo{ind};
        while ~strcmp(content,in)
            ind=ind+1;
            content = textinfo{ind};
        end
        out = numinfo(:,ind);
    end

    udata = dataGen('speed (u)',txt,num);
    kdata = dataGen('density (k)',txt,num);
    qdata = dataGen('flow rate (q)',txt,num);
    
    ulabel = 'Speed, u [mi/hr]';
    klabel = 'Density, k [veh/mi/ln]';
    qlabel = 'Flow Rate, q [veh/hr/ln]';
    
    maxdens = max(kdata);
    maxflow = max(qdata);
    maxspeed = max(udata);
    
    critical = maxspeed./2;
    unew = udata-critical;
    unew = abs(unew);
    loc = find(unew == min(unew));
    %Ucritical = udata(loc);
    Ucritical = critical;
    Kcritical = kdata(loc);
    
    LINE = polyfit(kdata,udata,1);   
    m = LINE(1);
    ic = LINE(2);
    
    EQ1 = [m, ic];
    EQ2 = [(-1./abs(m)),(ic./abs(m)),0];
    EQ3 = [m, ic, 0];
    
    text1 = sprintf('u = %0.3fk + %0.3f',m,ic);
    text2 = sprintf('q = (%0.3fu - u^2) / %0.3f',ic,abs(m));
    if m>0
        text3 = sprintf('q = %0.3fk + %0.3fk^2',ic,m);
    else
        text3 = sprintf('q = %0.3fk - %0.3fk^2',ic,abs(m));
    end
    kdomain = linspace(min(kdata),max(kdata),1000);
    urange = linspace(min(udata),max(udata),1000);
    
    %GRAPH 1
    subplot(2,2,1)
    hold on
  
    y1k = [Kcritical,maxdens];
    y1u = [Ucritical,Ucritical];
    y2k = [Kcritical,Kcritical];
    y2u = [0,Ucritical];
    plot(kdata,udata,'k*',kdomain,polyval(EQ1,kdomain),'g-',y1k,y1u,'y-',y2k,y2u,'y-')
    
    text(3,5,text1)
    xlabel(klabel)
    xlim([0,maxdens])
    ylabel(ulabel)
    ylim([0,maxspeed])
    
    
    %GRAPH 2
    
    subplot(2,2,2)
    hold on
    
    YU = [Ucritical,Ucritical];
    YQ = [0,maxflow];
    plot(qdata,udata,'k*',polyval(EQ2,urange),urange,'c-',YQ,YU,'y-')

    xlabel(qlabel)
    xlim([0,maxflow])
    ylabel(ulabel)
    ylim([0,maxspeed])
    text(500,10,text2)

    
    %GRAPH 3
    subplot(2,2,3)
    hold on

    YK = [Kcritical,Kcritical];
    YQ = [0,maxflow];
    plot(kdata,qdata,'k*',kdomain,polyval(EQ3,kdomain),'r-',YK,YQ,'y-');

    text(10,250,text3)
    xlabel(klabel)
    xlim([0,maxdens])
    ylabel(qlabel)
    ylim([0,maxflow])
    
end