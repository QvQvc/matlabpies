% 初始轮 轮秘钥加
% 1-9轮 字节替换 行位移 列混淆 轮秘钥加
% 末轮 字节替换 行位移 轮秘钥加

% main() 主程序
% bit2dex()  二进制转16进制 (最后显示会用到)
% dex2bit() 16进制转2进制 （估计用不到）
% ARK() 轮秘钥加 
% bit2state() bit序列转为状态矩阵 （开始会用到）
% state2bit() 状态矩阵转换为bit序列 （结束会用到）
% SR() 行移位

% data=round(rand(1,128)); % 原始数据 128位
data='3243F6A8885A308D313198A2E0370734'
data=hex2bit(data);
key='2B7E151628AED2A6ABF7158809CF4F3C'
key=hex2bit(key);

keys=extendKey(key); % 得到扩展秘钥 （4 * 320）-----（ 4 * 32 = 128）为一组,共 10 组
data_state=bit2state(data);
key_state=bit2state(key);
s=ARK(data_state,key_state);

for i=1:9  % 1-9 轮 AES变换
    s=subsbox(s);
    s=SR(s);
    s=rc(s);
    s=ARK(s,keys(:,i*32-31:i*32));
end
s=subsbox(s);   % 单独进行第10轮  这里是攻击目标 进行错误的 S 盒
s=SR(s);
s=ARK(s,keys(:,10*32-31:10*32));
s=state2bit(s);
s=bit2hex(s)

