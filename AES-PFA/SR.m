function output=SR(input)
%% ����λ ���� 4*4 ״̬����,��� 4*4 ״̬����
% �������� �Ѿ�������
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