close all;
clear all;
clc;
% parameters
n=3;
% catalan number
disp(['Catalan Number for n=',num2str(n),' is:']);
disp(['C(2n,n)-C(2n,n-1)=',num2str(nchoosek(2*n,n)-nchoosek(2*n,n-1))]);
% enumeration
serial=zeros(1,2*n);
index=1;
cnt=0;
serial(index)=1;
flag=1;
while flag
    if index==2*n
        cnt=cnt+1;
        disp([num2str(cnt),': ',num2str(serial)]);
        while flag
            index=index-1;
            if index==0
                flag=0;
            elseif (serial(index)==1)&&(sum(serial(1:index-1))>0)
                serial(index)=-1;
                break;
            end
        end
    else
        index=index+1;
        if sum(serial(1:index-1)==1)<n
            serial(index)=1;
        else
            serial(index)=-1;
        end
    end
end