% Create elevation data from GTOPO30 data

[datagrid refvec] = gtopo30('W100N40', 2, [24 31], [-90 -78]); 
%gathertopological data for 1' resolution
datagrid(isnan(datagrid)) = -100;
datagridt = flipud(datagrid);
image(datagridt);


% % Create an indexing matrix to quickly determine latitude and
longitude for
% % lat = 31:(-1/60):24;
% % lon = -90:(1/60):-78;
% % latrow = 0;
% % for latind = 1:length(lat)
% %     for lonind = 1:length(lon)
% %         latlonmat(latind, lonind).coord = [lat(latind) lon(lonind)];
% %     end
% % end
%
% I = find(datagridt == 1); %find all places where resolution needs
cleaning
%
% fprintf('Number of coordinates that need further resolution:
% 0.0f\n', length(I));
%
% % 3 text files needed to load data into NED latlon_to_elevation
translator
% % (http://www.latlontoelevation.com/dem_consume.aspx)
% % NED provides higher vertical resolution for more sensitive regions
% for txtind = 1:3
%     if length(I) > 2300
%        Imat(txtind).index = I(1:2300);
%        I = I(2301:end);
%     else
%        Imat(txtind).index = I;
%     end
%     fid = fopen(['finedata' num2str(txtind) '.txt'], 'a');
%     fprintf(fid, 'ID\tDD_LAT\tDD_LONG\n');
%     n = -1;
%     for LLind = Imat(txtind).index'
%         n = n+1;
%         LLcoord = latlonmat(LLind).coord;
%         LLlat = LLcoord(1); LLlon = LLcoord(2);
%         fprintf(fid, '%0.0f\t%f\t%f\n', n, LLlat, LLlon);
%     end
%     fclose(fid);
% end
% Read back in the data from the website output and insert into elevation
% map - header manually removed
% fid = fopen('outdata1.txt', 'r');
% C = textscan(fid, '%n%n%n%n%*[^\n]');
% eledata(1).out = C{4};
% fclose(fid);
%
% fid = fopen('outdata2.txt', 'r');
% C = textscan(fid, '%n%n%n%n%*[^\n]');
% eledata(2).out = C{4};
% fclose(fid);
%
% fid = fopen('outdata3.txt', 'r');
% C = textscan(fid, '%n%n%n%n%*[^\n]');
% eledata(3).out = C{4};
% fclose(fid);
for reinsert = 1:3
    datagridt(Imat(reinsert).index) = eledata(reinsert).out;
end
datagridt(isnan(datagrid)) = -50; %rescale the ocean color to a large
negative value
image(datagridt)