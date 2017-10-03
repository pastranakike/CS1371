function out = dragRace(time,vel,names,dist)

[r,c]=size(time);%getting the dimensions
dpoints=[];
for t=1:r
    times=time(t,:);
    velocities=vel(t,:);
    
    distances=cumtrapz(times,velocities);
    dpoints=[dpoints;distances];%getting each distance by rider
end
last=[];
for t=1:r
    timez=interp1(dpoints(t,:),time(t,:),dist);
    last=[last;timez]
end

[mined,place]=min(last);
winner=names{place};


accs=[];
for t=1:r
    acc=diff(vel(t,:))./diff(time(t,:));
    accs=[accs;acc];
end
max1=max(accs');
[dmax,indx]=max(max1);
maxacc=names{indx};%done with finding fastest acceleration

out=sprintf('The %s won the %0.1f meter race in %0.1f seconds! The %s had the fastest acceleration at %0.1f m/s^2!',winner,dist,mined,maxacc,dmax);
end