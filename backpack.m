close all;
clear all;
clc;
% parameters
weight=[2,1,3,2,1];
value=[12,10,20,15,8];
capacity=5;
% dynamic programming
num=length(weight);
opt=zeros(1,capacity+1);
optstrategy=zeros(num,capacity+1);
for i=1:num
    for j=capacity-weight(i):-1:0
        if opt(j+weight(i)+1)<opt(j+1)+value(i)
            opt(j+weight(i)+1)=opt(j+1)+value(i);
            optstrategy(1:i-1,j+weight(i)+1)=optstrategy(1:i-1,j+1);
            optstrategy(i,j+weight(i)+1)=1;
        end
    end
end
% display
disp(opt);
disp(optstrategy);        
