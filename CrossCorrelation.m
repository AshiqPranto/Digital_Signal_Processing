clc; #clear cmd
clear all; #clear variables
#close all; # close all opened figures

figure(1,"position",get(0,"screensize")); # fit the figure to our screensize

x = input('Enter the first sequence');
n1 = input('Enter the 0 index of sequence 1');
y = input('Enter the second sequence');
n2 = input('Enter the 0 index of sequence 1');

flipy = [];

for i = length(y):-1:1
  flipy = [flipy y(i)];
endfor

z = [];

for i = 1:length(x)
  temp = flipy.*x(i);
  z = [z ; temp];
end
[r c] = size(z);
startIndex = 2;
lastIndex = r+c;
sum = 0;
ans = [];
while(startIndex<=lastIndex)
  for i = 1:r
    for j = 1:c
      if((i+j)==startIndex)
        sum = sum + z(i,j);
      endif
    endfor
  endfor
  ans = [ans sum];
  sum = 0;
  startIndex = startIndex+1;
end

display(ans);

n = -(length(y)-1):1:(length(x)-1);
stem(n,ans);
