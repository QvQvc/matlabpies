function s=calinv(bits)  
%% ���ڲ��ԣ�������  ��ʱ���ü���õ�S��
% ���� 8 bits
m=[1 0 0 0 1 1 0 1 1];
%����Լ����ʽ 8 4 3 1 0
bits=[0 bits];
if(bin2dec(num2str(bits))==0)
    s=zeros(1,8);
    return;
end
up=zeros(1,8);
down=[zeros(1,7) 1];
while(bin2dec(num2str(m))~=0) % ��ʱ m ��û�л�Ϊ 0
    a=length(dec2bin(bin2dec(num2str(m))));
    b=length(dec2bin(bin2dec(num2str(bits))));
    if(a>=b)
        m=mod(m+[zeros(1,9-a) bits(9-b+1:end) zeros(1,a-b)],2);
        up=mod(up+leftmove(down,a-b),2);
    else
        bits=mod(bits+[zeros(1,9-b) m(9-a+1:end) zeros(1,b-a)],2);
        down=mod(down+leftmove(up,b-a),2);
    end    
end
s=down;
end