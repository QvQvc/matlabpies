%% ��������תΪ״̬����
% bit2state(round(rand(1,128)))
function output=bit2state(input)
state=[];
for i=1:4  % ת��Ϊ״̬����
    temp=[];
    for j=1:4
        % ������еķ�ʽ
        temp=[temp;input((4*(i-1)+j)*8-7:(4*(i-1)+j)*8)]; 
    end
    state=[state temp];
end
output=state;
end