% % for i=2:21
% %      filename = sprintf('dec-%d.yuv',i);
% %      MsePsnr(i,:) = yuvpsnr('dec-1.yuv', filename, 352,288,'411','y');
% %     
% % end
% % 
% % y1 = MsePsnr(:,1)
% % y2 = MsePsnr(:,2)
% % plot(x,y1)
% % title('MSE')
% % xlabel('Bitrate')
% % ylabel('MSE')
% % plot(x,y2)
% % title('PSNR')
% % xlabel('Bitrate')
% % ylabel('PSNR')

yb1 = yuvpsnr('dec-1.yuv', 'bit500k.yuv', 352,288,'411','y')
yb2 = yuvpsnr('dec-1.yuv', 'bit1000k.yuv', 352,288,'411','y')
yb3 = yuvpsnr('dec-1.yuv', 'bit1500k.yuv', 352,288,'411','y')
yb4 = yuvpsnr('dec-1.yuv', 'bit2000k.yuv', 352,288,'411','y')
yb5 = yuvpsnr('dec-1.yuv', 'bit2500k.yuv', 352,288,'411','y')
yb6 = yuvpsnr('dec-1.yuv', 'bit3000k.yuv', 352,288,'411','y')
yb7 = yuvpsnr('dec-1.yuv', 'bit3000k.yuv', 352,288,'411','y')

f = 1:143
% plot(f,yb1,'DisplayName','Bitrate 500kbps')
% hold on
plot(f,yb2,'DisplayName','Bitrate 1000kbps')
hold on 
plot(f,yb3,'DisplayName','Bitrate 1500kbps')
plot(f,yb4,'DisplayName','Bitrate 2000kbps')
plot(f,yb5,'DisplayName','Bitrate 2500kbps')
plot(f,yb6,'DisplayName','Bitrate 3000kbps')
title('MSE performance of different constant bitrate')
xlabel('Frame no')
ylabel('MSE(dB)')
hold off

lgd = legend;
lgd.NumColumns = 2;


    
  