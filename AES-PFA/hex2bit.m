%% 将16进制的字符串转换为 128 比特
% ans ='5D0171BCC0BEB1B50A22A8EFA4D6F1BF'
% hex2bit(ans)
function output=hex2bit(input)
output=[];
len=length(input);
map=[0 0 0 0;
    0 0 0 1;
    0 0 1 0;
    0 0 1 1;
    0 1 0 0;
    0 1 0 1;
    0 1 1 0;
    0 1 1 1;
    1 0 0 0;
    1 0 0 1;
    1 0 1 0;
    1 0 1 1;
    1 1 0 0;
    1 1 0 1;
    1 1 1 0;
    1 1 1 1];
for i=1:len
    temp=map(hex2dec(input(i))+1,:);
    output=[output temp];
end
end