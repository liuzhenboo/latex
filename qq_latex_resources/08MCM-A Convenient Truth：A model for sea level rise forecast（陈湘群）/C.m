clear; load hiresworkspace
oceandepth = -50;
ocean = find(datagridt == -100); land = find(datagridt ~= -100);
datagridt(ocean) = oceandepth;
slr = [9.16 16.26 21.66 29.32 32.08];
SLR =slr(iii)/100; %meters risen above sea level
datagrid2 = datagridt - SLR;
datagrid2(ocean) = oceandepth;
unsubland = find(datagrid2<=0 & datagrid2 ~= oceandepth)'; 
%land that is uder sea level but not yet submerged
subland = unsubland;
while ~isempty(subland)  
    subland = [];
    for landpt = unsubland   
        [X Y] = ind2sub(size(datagrid2), landpt);
        nindX = [X-1 X+1]; nindY = [Y-1 Y+1]; %create a matrix of 
neighboring indices to check if there is neighboring ocea
        if X-1 < 1
           nindX = [1 X+1];
        end
        if X+1 > size(datagrid2, 1)
           nindX = [X-1 X];
        end
        if Y-1 < 1
           nindY = [1 Y+1];
        end
        if Y+1 > size(datagrid2, 2)
           nindY = [Y-1 Y];
        end
        if find(datagrid2(nindX, nindY) == oceandepth) 
        %if a neighbor is part of the ocean
           datagrid2(X, Y) = oceandepth;
           subland = [subland landpt];
        end
    end
    unsubland = setdiff(unsubland, subland);
end
imagesc(datagrid2);
citydata;
lats = 31:(-1/60):(24+1/61);
lons = -90:(1/60):(-78-1/61);
bodycount = 0;
for cityind = 1:length(city)
    citycoords = city(cityind).coords;
[junk, MindexLat] = min(abs(citycoords(1)-lats));
[junk, MindexLon] = min(abs(citycoords(2)-lons));
if datagrid2(MindexLat, MindexLon) == oceandepth
fprintf('%s, FL is submerged: %0.0f people have been displaced\n',
city(cityind).name, city(cityind).pop);
bodycount = bodycount+city(cityind).pop;
%datagrid2(MindexLat, MindexLon) = 1000;
end
end
imagesc(datagrid2);
fprintf('Total number of residents displaced from metropolitan 
areas:%0.0f\n', bodycount);