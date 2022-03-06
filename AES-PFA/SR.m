function output=SR(input)
%% 行移位 输入 4*4 状态矩阵,输出 4*4 状态矩阵
% 存在问题 已经检查出来
state2=[];
for i=2:4
    temp1=input(i,1:8*(i-1));
    temp2=input(i,8*(i-1)+1:end);
    temp=[temp2 temp1];
    state2=[state2;temp];
end
state2=[input(1,:);state2];
output=state2;
end