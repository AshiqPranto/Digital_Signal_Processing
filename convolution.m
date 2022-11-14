clc; #clear cmd
clear all; #clear variables
#close all; # close all opened figures

figure(1,"position",get(0,"screensize")); # fit the figure to our screensize


x = [1 3 2 4];
h = [2 1 2];
z = [];

for i = 1:length(x)
  temp = h.*x(i);
  z = [z;temp];
end
[r c] = size(z);

startIndex = 2;
lastIndex = r+c;
ans = []; # we will store our convolution sum here
sum = 0;

while(startIndex<=lastIndex)
  for i = 1:r
    for j = 1:c
      if ((i+j) == startIndex)
        sum = sum + z(i,j);
      endif
    endfor
  endfor
  ans = [ans sum];
  sum = 0;
  startIndex = startIndex + 1;
end
display(ans);

# we have to calculate the minimum index of Ans and maximum index of Ans
z1 = 2; # 0 index of x
z2 = 3; # 0 index of h

minIndexOfX = -1;
minIndexOfH = -2;
maxIndexofX = 2;
maxIndexofH = 0;

minIndexOfAns = minIndexOfX+minIndexOfH;
maxIndexOfAns = maxIndexOfX + maxIndexOfH;
n = minIndexOfAns:1:maxIndexOfAns;

#index = (z1+z2-1);
#n = -(index-1):1:length(ans)-index;

stem(n,ans);
