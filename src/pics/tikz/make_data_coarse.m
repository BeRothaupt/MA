data = opti500m;
% data = opti1000m;

newlines = 1;
for i = 1:height(data)
    rest = mod(i,40);
    
    if rest == 1
        datanew(newlines,:) = data(i,:);
        newlines = newlines + 1;
    end
    if i == height(data)
        datanew(newlines,:) = data(i,:);
    end
end

datanew=table2array(datanew);
   
savedata = [datanew(:,1) datanew(:,2) datanew(:,3)];

dlmwrite('opti500m-coarse.dat',savedata);