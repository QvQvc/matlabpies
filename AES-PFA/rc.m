% �л���
% ����4*32 ��״̬�������4*32��״̬����
% �Ѳ��ԣ�û����
function output=rc(s)
output=[];
for i=1:4
    output(1,i*8-7:i*8)=mod(gfmul2(s(1,i*8-7:i*8))+gfmul3(s(2,i*8-7:i*8))+s(3,i*8-7:i*8)+s(4,i*8-7:i*8),2);
    output(2,i*8-7:i*8)=mod(s(1,i*8-7:i*8)+gfmul2(s(2,i*8-7:i*8))+gfmul3(s(3,i*8-7:i*8))+s(4,i*8-7:i*8),2);
    output(3,i*8-7:i*8)=mod(s(1,i*8-7:i*8)+s(2,i*8-7:i*8)+gfmul2(s(3,i*8-7:i*8))+gfmul3(s(4,i*8-7:i*8)),2);
    output(4,i*8-7:i*8)=mod(gfmul3(s(1,i*8-7:i*8))+s(2,i*8-7:i*8)+s(3,i*8-7:i*8)+gfmul2(s(4,i*8-7:i*8)),2);
end
end