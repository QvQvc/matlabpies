clc;clear all;close all;

key='2B7E151628AED2A6ABF7158809CF4F3C';  % 秘钥恒定
key=hex2bit(key);
keys=extendKey(key); % 得到扩展秘钥 （4 * 320）-----（ 4 * 32 = 128）为一组,共 10 组

% N=1000;
% 单独一次只对某一字节进行攻击 总共16 个字节
% 这么算的话，总共需要进行16次单独的攻击 16*Time 次
% 其中 Time 为均值，但是可能并不会用到就已经出现了 C_min
% 这时候就退出程序
% 假设故障注入者知道注入的故障的值 C_min=key(i)+sbox(i) (并不出现)
% 则有 key(i)=C_min+sbox(i)
% 其中 sbox（i） 为注入的 S 盒的原值8 bit（假设已经知道）

rec=zeros(1,256); % 用来记录单字节的所有值
N=6000;
flag=256;
for loop=1:N
data=round(rand(1,128));
data_state=bit2state(data);
key_state=bit2state(key);
s=ARK(data_state,key_state);
for i=1:9  % 1-9 轮 AES变换
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
s=subsbox(s);   % 单独进行第10轮  这里是攻击目标 进行错误的 S 盒
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
% index=find(rec==0)-1;% 序号 -1 得到具体的数值
% temp1=dec2bitw(index,8); % 已转为 2 进制 8 位
% sbox_byte='63'; % 注入的故障
% temp2=hex2bit(sbox_byte);
% plot(rec);
% xlabel('Possible value of single byte secret key');
% ylabel('Number of occurrences per byte in the last round');
% title('Total number of ciphertext');
% infer_key_byte=mod(temp1+temp2,2)
% refer=keys(1,289:296)
