% 读取数据
[s, lat, lon] = textread(filename, '%s %f %f');

% 绘制世界地图模板
worldmap('world');
% 在模板上绘制散点图
plotm(lat, lon, 'r*', 'markersize', 2);

% 更改图片坐标显示
figure(gcf);
dcm_obj = datacursormode(gcf);
set(dcm_obj,'DisplayStyle','datatip','SnapToDataVertex','off','Enable','on');
set(dcm_obj,'UpdateFcn',{@dcmcallback, s});
