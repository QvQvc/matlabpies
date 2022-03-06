function z=str2bits(r)
%% 已经测试，没有问题
% str2bits('AB')
% ans =    1     0     1     0     1     0     1     1
%%
% 传进来的 r 是 两个字母 ‘AB’ 是从S盒查找出来的
n=hex2dec(r);
% 接下来将10进制数 n 转变为 8 位 的 bits
z=[];
while(n>0)
    t=mod(n,2);
    z=[t z];
    n=(n-t)/2;
end
% 对 z 补 0 
m=length(z);
z=[zeros(1,8-m) z];
end