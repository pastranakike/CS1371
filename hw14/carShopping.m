function out = carShopping(file,pref1,pref2)

[num,txt,raw]=xlsread(file);

pref1_ind=strcmp(pref1,txt(1,:));%getting the place where the preferenc is

pref1col=raw(2:end,pref1_ind);
numbers=[];
for t=1:length(pref1col)
    numbers=[numbers pref1col{t}];
        end
        
[numsort,order]=sort(numbers,'descend');
x=raw([2:end],:);
x=x(order,:);
raw([2:end],:)=x;
%done with the first preference


pref2ind=strcmp(pref2,raw(1,:));
secs=raw([2:end],pref2ind);
bnumsort=numsort;
new=[raw(1,:)];
while ~isempty(bnumsort)
    trial=bnumsort(1);
    idents=find(trial==numsort);
    tests=numsort(idents);
    identss=find(bnumsort==trial);
    bnumsort(identss)=[];%finding 
    idents=idents+1;
    d=[];
    for c=idents(1):idents(end)
       d=[d raw{c,pref2ind}];
    end
    [ord,indxs]=sort(d,'descend');
    ad=raw([idents(1):idents(end)],:);
    ad=ad(indxs,:);
    new=[new;ad];
end
out=new([1:4],:);
    
end
