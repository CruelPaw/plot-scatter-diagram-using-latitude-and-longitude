% 读取数据
[s, lat, lon] = textread(filename, '%s %f %f');

% 将经纬度坐标转化为直角坐标
latlon20=[lat, lon];
axesm utm;
Z=utmzone(latlon20);
setm(gca,'zone',Z);
h = getm(gca);
R=zeros(size(latlon20));
for i=1:length(latlon20)
    [x,y]= mfwdtran(h,latlon20(i,1),latlon20(i,2)); 
     R(i,:)=[x;y];
end

% 打印图片
plot(R(:,1),R(:,2),'r*', 'markersize', 2);

% 更改图片坐标显示
figure(gcf);
dcm_obj = datacursormode(gcf);
set(dcm_obj,'DisplayStyle','datatip','SnapToDataVertex','off','Enable','on');
set(dcm_obj,'UpdateFcn',{@dcmcallback,stationName});
