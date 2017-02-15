t = [0:0.01:0.98];

y1 = sin(2*pi*4*t);

y2 = cos(2*pi*4*t);

plot(t,y1);
hold on;
plot(t,y2,'r');
xlabel('time')
ylabel('value')
legend('sin','cos')
title('my plot')

%save fig:
%print -dpng 'myPlot.jpg'

close;
figure(1);
plot(t, y1);

figure(2);
plot(t, y2);

close all;

subplot(1,2,1); %divides plot into 1x2 grid, access first element
plot(t, y1);

subplot(1,2,2);
plot(t, y2);

axis([0.5 1 -1 1]); %change axis scale

clf; %clears figure

A = magic(5);

imagesc(A);

clf;

imagesc(flipud(A')), colorbar, colormap gray;

disp(A);