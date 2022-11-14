clc; #clear cmd
clear all; #clear variables
#close all; # close all opened figures

figure(1,"position",get(0,"screensize")); # fit the figure to our screensize

# input format [1 2 3 4]
x = input('Enter the first Sequence');
xFlip = [];
for i = length(x):-1:1
  xFlip = [xFlip  x(i)];
end
z = [];
for i = 1:length(x)
  temp = xFlip.*x(i);
  z = [z ; temp];
end

ans = [];
[r c] = size(z);
startIndex = 2;
lastIndex = r+c;
sum = 0;

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
  startIndex = startIndex + 1;
end
display(ans); 

n = -(length(x)-1):1:(length(x)-1);
stem(n,ans);



