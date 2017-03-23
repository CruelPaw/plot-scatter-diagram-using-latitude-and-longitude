function [ txt ] = dcmcallback(empt,event_obj,label)
dcm_obj = datacursormode(gcf);
info=getCursorInfo(dcm_obj);
ind = info.DataIndex;
txt = [num2str(label{ind, 1}) ' ' label{ind, 2}];
end