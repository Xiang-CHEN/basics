function array_sorted=sort()
    close all;
    clear all;
    clc;
    array=[3,2,7,5,6,4,1];
    array_sorted=sort_quick(array);
end
function array=sort_bubble(array)
    for i=1:length(array)-1
        for j=length(array):-1:i+1
            if array(j-1)>array(j)
                temp=array(j-1);
                array(j-1)=array(j);
                array(j)=temp;
            end
        end
    end
end
function array=sort_insert(array)
    for i=2:length(array)
        cur=array(i);
        for j=i-1:-1:1
            if cur<array(j)
                array(j+1)=array(j);
            else
                array(j+1)=cur;
                break;
            end
        end
        if cur<array(1)
            array(1)=cur;
        end
    end
end
function array=sort_select(array)
    for i=1:length(array)-1
        min=i;
        for j=i+1:length(array)
            if array(min)>array(j)
                min=j;
            end
        end
        temp=array(i);
        array(i)=array(min);
        array(min)=temp;
    end
end
function array=sort_quick(array)
    for i=1:length(array)-1
        min=i;
        for j=i+1:length(array)
            if array(min)>array(j)
                min=j;
            end
        end
        temp=array(i);
        array(i)=array(min);
        array(min)=temp;
    end
end