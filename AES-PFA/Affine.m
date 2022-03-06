%% 仿射变换 输入 8bit 输出 8bit 仿射变换结果
% 正在测试，有问题
function output=Affine(input)
m=[];
temp=[1 0 0 0 1 1 1 1];
for i=1:7
    temp1=temp(1:8-i);
    temp2=temp(9-i:end);
    m=[m;temp2 temp1];
end
m=[temp;m];
const=[1 1 0 0 0 1 1 0];
mul=mod(mod(m*input',2)+const',2);
output=mul';
output=[output(5:end) fliplr(output(1:4))];
end