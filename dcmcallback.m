function [ txt ] = dcmcallback(empt,event_obj,label)
dcm_obj = datacursormode(gcf);
info = getCursorInfo(dcm_obj);
ind = info.DataIndex;
txt = label{ind}; % txt为想要显示的内容向量
end
