clc;clear all;close all;

key='2B7E151628AED2A6ABF7158809CF4F3C';  % ��Կ�㶨
key=hex2bit(key);
keys=extendKey(key); % �õ���չ��Կ ��4 * 320��-----�� 4 * 32 = 128��Ϊһ��,�� 10 ��

% N=1000;
% ����һ��ֻ��ĳһ�ֽڽ��й��� �ܹ�16 ���ֽ�
% ��ô��Ļ����ܹ���Ҫ����16�ε����Ĺ��� 16*Time ��
% ���� Time Ϊ��ֵ�����ǿ��ܲ������õ����Ѿ������� C_min
% ��ʱ����˳�����
% �������ע����֪��ע��Ĺ��ϵ�ֵ C_min=key(i)+sbox(i) (��������)
% ���� key(i)=C_min+sbox(i)
% ���� sbox��i�� Ϊע��� S �е�ԭֵ8 bit�������Ѿ�֪����

rec=zeros(1,256); % ������¼���ֽڵ�����ֵ
N=6000;
flag=256;
for loop=1:N
data=round(rand(1,128));
data_state=bit2state(data);
key_state=bit2state(key);
s=ARK(data_state,key_state);
for i=1:9  % 1-9 �� AES�任
    s=subsbox(s);
    s=SR(s);
    s=rc(s);
    s=ARK(s,keys(:,i*32-31:i*32));
end
% if(loop<200)
%     s=subsbox(s);
% else
%     s=misbox(s); 
% end
s=subsbox(s);   % �������е�10��  �����ǹ���Ŀ�� ���д���� S ��
s=SR(s);
s=ARK(s,keys(:,10*32-31:10*32));
t=bin2dec(num2str(s(1,1:8)));
rec(t+1)=rec(t+1)+1;

% if(rec(t+1)==1)
%     flag=flag-1;
% end

% if(flag==1)
%     break;
% end

end
% index=find(rec==0)-1;% ��� -1 �õ��������ֵ
% temp1=dec2bitw(index,8); % ��תΪ 2 ���� 8 λ
% sbox_byte='63'; % ע��Ĺ���
% temp2=hex2bit(sbox_byte);
% plot(rec);
% xlabel('Possible value of single byte secret key');
% ylabel('Number of occurrences per byte in the last round');
% title('Total number of ciphertext');
% infer_key_byte=mod(temp1+temp2,2)
% refer=keys(1,289:296)
