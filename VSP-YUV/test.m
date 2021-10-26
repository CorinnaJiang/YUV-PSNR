
% MSR with one sequence
fb1 = yuvpsnr('dec-1.yuv', 'f30bit3000k.yuv', 352,288,'411','y')
fb2 = yuvpsnr('dec-1.yuv', 'f30bit5000k.yuv', 352,288,'411','y')
fb3 = yuvpsnr('dec-1.yuv', 'f30bit6000k.yuv', 352,288,'411','y')
fb4 = yuvpsnr('dec-1.yuv', 'b6000ktest.yuv', 352,288,'411','y')
fb5 = yuvpsnr('dec-1.yuv', 'f30bit9000k.yuv', 352,288,'411','y')
fb6 = yuvpsnr('dec-1.yuv', 'f30bit10000k.yuv', 352,288,'411','y')
fb7 = yuvpsnr('dec-1.yuv', 'f30bit20000k.yuv', 352,288,'411','y')

% Mean MSE and PSNR
% fb(1,:) = yuvpsnr('dec-1.yuv', 'f30bit3000k.yuv', 352,288,'411','y')
% fb(2,:) = yuvpsnr('dec-1.yuv', 'f30bit5000k.yuv', 352,288,'411','y')
% fb(3,:) = yuvpsnr('dec-1.yuv', 'f30bit6000k.yuv', 352,288,'411','y')
% fb(4,:) = yuvpsnr('dec-1.yuv', 'b6000ktest.yuv', 352,288,'411','y')
% fb(5,:) = yuvpsnr('dec-1.yuv', 'f30bit9000k.yuv', 352,288,'411','y')
% fb(6,:) = yuvpsnr('dec-1.yuv', 'f30bit10000k.yuv', 352,288,'411','y')

f = 1:143

% Normal 
% plot(f,fb1,'DisplayName','Bitrate 3007.25kbps')
% hold on 
% plot(f,fb2,'DisplayName','Bitrate 4612.75kbps')
% plot(f,fb5,'DisplayName','Bitrate 7893.68kbps')
% plot(f,fb7,'DisplayName','Bitrate 10641.10kbps')
% title('MSE performance of different constant bitrate with frame rate 30fps')

% Outlayer
plot(f,fb3,'DisplayName','Bitrate 5817.18kbps')
hold on 
plot(f,fb4,'DisplayName','Bitrate 6892.67kbps')
plot(f,fb6,'DisplayName','Bitrate 9325.23kbps')
title('MSE performance of different constant bitrate with frame rate 30fps')
xlabel('Frame no')
ylabel('MSE(dB)')
hold off

lgd = legend;
lgd.NumColumns = 2;