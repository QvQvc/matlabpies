% 列混淆
% 输入4*32 的状态矩阵，输出4*32的状态矩阵
% 已测试，没问题
function output=rc(s)
output=[];
for i=1:4
    output(1,i*8-7:i*8)=mod(gfmul2(s(1,i*8-7:i*8))+gfmul3(s(2,i*8-7:i*8))+s(3,i*8-7:i*8)+s(4,i*8-7:i*8),2);
    output(2,i*8-7:i*8)=mod(s(1,i*8-7:i*8)+gfmul2(s(2,i*8-7:i*8))+gfmul3(s(3,i*8-7:i*8))+s(4,i*8-7:i*8),2);
    output(3,i*8-7:i*8)=mod(s(1,i*8-7:i*8)+s(2,i*8-7:i*8)+gfmul2(s(3,i*8-7:i*8))+gfmul3(s(4,i*8-7:i*8)),2);
    output(4,i*8-7:i*8)=mod(gfmul3(s(1,i*8-7:i*8))+s(2,i*8-7:i*8)+s(3,i*8-7:i*8)+gfmul2(s(4,i*8-7:i*8)),2);
end
end