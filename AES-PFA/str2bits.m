function z=str2bits(r)
%% �Ѿ����ԣ�û������
% str2bits('AB')
% ans =    1     0     1     0     1     0     1     1
%%
% �������� r �� ������ĸ ��AB�� �Ǵ�S�в��ҳ�����
n=hex2dec(r);
% ��������10������ n ת��Ϊ 8 λ �� bits
z=[];
while(n>0)
    t=mod(n,2);
    z=[t z];
    n=(n-t)/2;
end
% �� z �� 0 
m=length(z);
z=[zeros(1,8-m) z];
end