% ȡ s ����Ԫ��,δ��Ҫ�� Ҳ���Խ�����ζ�������ʹ�ã�����ֻ��Ҫ����һ�α���
function s=getsbox(c)
row=bin2dec(num2str(c(1:4)));
col=bin2dec(num2str(c(5:8)));
box=sbox(1);
str=box(row+1,col*2+1:col*2+2);
s=str;
end