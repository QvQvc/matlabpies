% 计算模约简
% 已测试
function s=modm(b)
% 次数 8 4 3 1 0 （285）
c=[1 0 0 0 1 1 0 1 1];
n=length(b);
if(n<=8)
    s=b;
else
    while(length(b)>8)
        b(1:9)=mod(b(1:9)+c,2);
        while(b(1)==0 && length(b)>8)
            b=b(2:end);
        end
    end
    s=b;
end
end