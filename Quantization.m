clc; #clear cmd
clear all; #clear variables
#close all; # close all opened figures


figure(1,"position",get(0,"screensize")); # fit the figure to our screensize

# continuous signal
f = 2;
a = 20;
t = 0:0.001:1;
analogSignal = a*sin(2*pi*f*t);
subplot(3,1,1);
plot(t,analogSignal);
grid on;
title('continuous sin wave');
xlabel('time(s)');
ylabel('Amplitude');

#Sampled Sinwave
fs = 50*f;
n = 0:1/fs:1; #sampled Time
sampledSignal = a*sin(2*pi*f*n);
subplot(3,1,2);
stem(n,sampledSignal);
hold on;
plot(t,analogSignal);
grid on;
title('Sampled sin wave');
xlabel('time(n)');
ylabel('Amplitude');

# Quantization
bit = 3;
aMin = min(sampledSignal);
aMax = max(sampledSignal);
step = (aMax-aMin)/(2.^bit);
quantizedSignal = round(sampledSignal/step)*step;
subplot(3,1,3);
plot(n,quantizedSignal);

#stem(n,quantizedSignal); 
hold on;
plot(t,analogSignal);
grid on;
title("Quantized Signal");
xlabel('Time(n)');
ylabel('Amplitude');


