%% 比特序列转为状态矩阵
% bit2state(round(rand(1,128)))
function output=bit2state(input)
state=[];
for i=1:4  % 转换为状态矩阵
    temp=[];
    for j=1:4
        % 先填充列的方式
        temp=[temp;input((4*(i-1)+j)*8-7:(4*(i-1)+j)*8)]; 
    end
    state=[state temp];
end
output=state;
end