function output=ARK(input,key)
% ����128���� ���ݺ�����Կ,�������
output=mod(input+key,2);
end