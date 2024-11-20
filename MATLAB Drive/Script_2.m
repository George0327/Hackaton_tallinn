lat = Position.latitude;
lon = Position.longitude;

earthCirc = 40075000; % Earth radius in meters
totaldis = 0;

for i = 1:length(lat)-1
    lat1 = lat(i);
    lon1 = lon(i);
    lat2 = lat(i+1);
    lon2 = lon(i+1);
    
    diff = distance(lat1, lon1, lat2, lon2);
    dis = (diff/360)*earthCirc;

    totaldis = totaldis + dis;
end

totaldis