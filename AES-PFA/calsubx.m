function s=calsubx(any)
% 对传进来的任何规则排列的 bits 进行 S盒的替换,输出仍为规则 bits
%% 已经测试，没有问题
% subsbox([0 0 0 0 0 0 0 0;0 0 0 0 0 0 0 1])
% ans =
%      0     1     1     0     0     0     1     1
%      0     1     1     1     1     1     0     0
%%
% 行仍然保持为行,列必须为 8 的整数
[a,b]=size(any); 
b=b/8;
s=[];
box=sbox();
for i=1:a
    for j=1:b
        c=any(i,j*8-7:j*8);
        s(i,j*8-7:j*8)=calinv(c);
    end
end
end