% 有限域 3*输入
% 测试没问题
function output=gfmul3(input)
output=mod(gfmul2(input)+input,2);
end