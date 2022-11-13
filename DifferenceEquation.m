clc; #clear cmd
#clear all;

figure(1,"position",get(0,"screensize"));

# Unit Sample Sequence
point = 21;
unitSample = zeros(1,point);
unitSample(11) = 1;
n = -10:1:10;
subplot(3,3,1);
stem(n,unitSample,'r');
title('Unit Sample Sequence');

# Unit step sequence
point = 21;
stepSample = ones(1,point);
for i = 1:10
  stepSample(i) = 0;
end
n = -10:1:10;
subplot(3,3,2);
stem(n,stepSample,'r');
title('Step Sample Sequence');

# Ramp Sequence
point = 21;
rampSample = zeros(1,point);
for i = 11:21
  rampSample(i) = i-11;
end
n = -10:10;
subplot(3,3,3);
stem(n,rampSample,'r');
title('Ramp Sample Sequence');

# Exponential Sequence
point = 20;
n = 0:point;
expoSequence = 1.3.^n;
subplot(3,3,4);
stem(n,expoSequence,'r');
title('Exponential sequence when a>1');

expoSequence = 0.7.^n;
subplot(3,3,5);
stem(n,expoSequence,'r');
title('Exponential Sequence when 0<a<1');

expoSequence = (-0.7).^n;
subplot(3,3,6);
stem(n,expoSequence,'r');
title('Exponential Sequence when -1<a<0');


expoSequence = (-1.3).^n;
subplot(3,3,6);
stem(n,expoSequence,'r');
title('Exponential Sequence when a<-1');

# Random Sequence
point = 21;
n = -10:10;
randomSeq = rand(1,point);
subplot(3,3,7);
stem(n,randomSeq,'r');
title('Random Sequence');

# SineWave
f = 4; #... number of cycle = frequency
a = 7; #... amplitude
t = 0:0.01:1;
sineSeq = a*sin(2*pi*f*t);
subplot(3,3,8);
plot(t,sineSeq);
title('Sine Wave');

#Cos Wave
f = 4;
a = 7;
t = 0:0.01:1;
cosSeq = a*cos(2*pi*f*t);
subplot(3,3,9);
plot(t,cosSeq);
title('Cose wave');

#Complex Sine Wave
t = 0:0.01:1;
complexSeq = 5*cos(2*pi*4*t) + 4*sin(2*pi*6*t);
subplot(3,3,9);
plot(t,complexSeq);
title('Complex Sine Wave');