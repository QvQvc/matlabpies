%% ����Ϊ 128 bit ��������,���Ϊ�ַ���

% bit2hex(round(rand(1,128)))
% ans = '876806241C4754D87DBE1026160969CC'
function output=bit2hex(input)
s=[];
a=length(input)/4;
for i=0:a-1
s=[s dec2hex(bin2dec(num2str(input(4*i+1:4*(i+1)))))];
end
output=s;
end