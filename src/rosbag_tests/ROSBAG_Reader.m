function ROSBAG_Reader
%%%%%%%%%% Hard coded bits %%%%%%%%%%%%%%%%%%%%%%%
startT = 5072 %start time for image extraction 649
%endT = 445 % end time for image extraction
%endT = 741
endT= 5179 %711
depthLim =1000; %remove all depth data greater than depthLim
fn = ('new_360_bottle.bag');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%image data stored in the following
dataType = {'/camera/depth/image_raw';...
    '/camera/infra1/image_raw';...
    '/camera/color/image_raw'};
%rosbag info 'test.bag'
%dataType = {'/device_0/sensor_0/Depth_0/image/data';...
%    '/device_0/sensor_0/Infrared_1/image/data';...
%    '/device_0/sensor_1/Color_0/image/data'};
% not interested in infrared data
%for i=1:2:3
for i = startT:1:endT
    dataT=dataType{1}
    bag = rosbag(fn)
    bagselect1 = select(bag, 'Topic', dataT)
    bagselect2 = select(bag, 'Time', [i i+1], 'Topic', dataT)
    bagselect2.AvailableTopics{1,end}
    bagselect3 = select(bagselect2, 'Time', [i i+1])
    msgs = readMessages(bagselect3);
    msgs{1}
    for j=1:size(msgs,1)
        [img,alpha] = readImage(msgs{1});
        imshow(img)
%         try
%             figure(1);
%             imshow(img,[min(min(img)) max(max(img))/10]);
%             colormap(jet);
%             new_name = sprint("test_photo_f2_%d.png", (i-startT));
%             saveas(img, new_name);
%             img=double(img);
%             img(img>depthLim)=0; 
%             img(img==0)=NaN; % get rid of spurious daa from mesh plot
%             figure2 = figure(2); 
%             mesh(img);
% %             new_name = sprint("test_photo_f2_%d.png", (i-startT));
% %             saveas(figure2, new_name);
% 
%         catch
%             figure3 = figure(3);
%             name = sprintf("test_5_photo_%d.png", i);
%             saveas(figure3,name);
%             imshow(img);  
%         end
        new_name = sprintf("test_photo_f2_%d.png", (i-startT));
        saveas(img, new_name);
        clear img
    end
end