% ��ʼ�� ����Կ��
% 1-9�� �ֽ��滻 ��λ�� �л��� ����Կ��
% ĩ�� �ֽ��滻 ��λ�� ����Կ��

% main() ������
% bit2dex()  ������ת16���� (�����ʾ���õ�)
% dex2bit() 16����ת2���� �������ò�����
% ARK() ����Կ�� 
% bit2state() bit����תΪ״̬���� ����ʼ���õ���
% state2bit() ״̬����ת��Ϊbit���� ���������õ���
% SR() ����λ

% data=round(rand(1,128)); % ԭʼ���� 128λ
data='3243F6A8885A308D313198A2E0370734'
data=hex2bit(data);
key='2B7E151628AED2A6ABF7158809CF4F3C'
key=hex2bit(key);

keys=extendKey(key); % �õ���չ��Կ ��4 * 320��-----�� 4 * 32 = 128��Ϊһ��,�� 10 ��
data_state=bit2state(data);
key_state=bit2state(key);
s=ARK(data_state,key_state);

for i=1:9  % 1-9 �� AES�任
    s=subsbox(s);
    s=SR(s);
    s=rc(s);
    s=ARK(s,keys(:,i*32-31:i*32));
end
s=subsbox(s);   % �������е�10��  �����ǹ���Ŀ�� ���д���� S ��
s=SR(s);
s=ARK(s,keys(:,10*32-31:10*32));
s=state2bit(s);
s=bit2hex(s)

