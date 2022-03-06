% 和 2 相乘
% 测试没问题
function output=gfmul2(input)
temp=[input(2:8) 0];
const=[0 0 0 1 1 0 1 1];
% 1B 8 4 3 2 0
if(input(1)>0)
    output=mod(temp+const,2);
else
    output=temp;
end
end