function s=calsubx(any)
% �Դ��������κι������е� bits ���� S�е��滻,�����Ϊ���� bits
%% �Ѿ����ԣ�û������
% subsbox([0 0 0 0 0 0 0 0;0 0 0 0 0 0 0 1])
% ans =
%      0     1     1     0     0     0     1     1
%      0     1     1     1     1     1     0     0
%%
% ����Ȼ����Ϊ��,�б���Ϊ 8 ������
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