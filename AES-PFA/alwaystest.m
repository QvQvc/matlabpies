clc;clear all;close all;
%% sbox 测试段

% s=sbox(1);
% [a,b]=size(s);
% count=zeros(1,16);
% for i=1:a
%     for j=1:b
%         t=char2dec(s(i,j))+1;
%         count(t)=count(t)+1;
%     end
% end

%% 单字节取S盒测试段

% c=round([zeros(1,7) 1]);
% s=getsbox(c)
%% 秘钥扩展模块也没有问题

% key='2B7E151628AED2A6ABF7158809CF4F3C';
% key=hex2bit(key);
% keys=extendKey(key);
% s=keys(:,1:32);
% s=bit2hex(state2bit(s))

%% 测试列混淆 没有问题

% data='C97A63B0E5F29CA7FD7826822B6E67E5';
% bit2hex(state2bit(rc(bit2state(hex2bit(data)))))

%% 测试用例 单轮测试完毕 正确

% sboxed='87EC4A8CF26EC3D84D4C46959790E7A6';
% key='AC7766F319FADC2128D12941575C006A';
% key=hex2bit(key);
% key=bit2state(key);
% s=hex2bit(sboxed);
% s=bit2state(s);
% s=SR(s);
% SRed=bit2hex(state2bit(s)) % 行移位后
% s=rc(s);
% rced=bit2hex(state2bit(s)) % 列混淆后
% s=ARK(s,key);
% s=bit2hex(state2bit(s)) % 轮秘钥加后

%% 测试计算S盒是否有问题 09 没有问题 其他还不一定
s=[];
for i=0:1
    for j=0:1
        s=[s calinv([dec2bit4(i) dec2bit4(j)])];
    end
end