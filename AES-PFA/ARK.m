function output=ARK(input,key)
% 传入128比特 数据和轮秘钥,输出矩阵
output=mod(input+key,2);
end