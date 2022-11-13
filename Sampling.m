clc; #clear cmd
clear all; #clear variables
#close all; # close all opened figures


figure(1,"position",get(0,"screensize")); # fit the figure to our screensize

# Given a continuous signal x = 12*sin(2*pi*5*t)
# We have to sample the signal with nyquist rate
# Sample the signal with over and under sampling

#Given Sine wave

f = 5; # frequency
a = 12; # Amplitude
t = 0: 0.005:1; # Continuous time 
analogSignal = a*sin(2*pi*f*t);
subplot(2,2,1);
plot(t,analogSignal);
title('Analog SinWave');

# Sampling with nyquist rate
# rate = f*2
fs = 2*f; #sampling frequency
n = 0:1/fs:1; #sampled time 
sampledSignal = a*sin(2*pi*f*n);
subplot(2,2,2);
stem(n,sampledSignal);
title('Sampled with nyquist rate');

#Under sampling
fs = 1.5*f;
n = 0:1/fs:1;
sampledSignal = a*sin(2*pi*f*n);
subplot(2,2,3);
stem(n,sampledSignal);
title('Under Sampling');



#Over Sampling
fs = 7*f;
n = 0:1/fs:1;
sampledSignal = a*sin(2*pi*f*n);
subplot(2,2,4);
stem(n,sampledSignal);
title('Over Sampling');


