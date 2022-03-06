function keys=extendKey(key)
%% 扩展秘钥已测试，无误
%%
Rcon=[0 0 0 0 0 0 0 1 ...
    0 0 0 0 0 0 1 0 ...
    0 0 0 0 0 1 0 0 ...
    0 0 0 0 1 0 0 0 ...
    0 0 0 1 0 0 0 0 ...
    0 0 1 0 0 0 0 0 ...
    0 1 0 0 0 0 0 0 ...
    1 0 0 0 0 0 0 0 ...
    0 0 0 1 1 0 1 1 ...
    0 0 1 1 0 1 1 0];
rcon=[Rcon;zeros(3,80)];
% 初始秘钥直接赋值
keys=bit2state(key); 
for i=5:44
    if(mod(i,4)==1)
        % 循环左移 （其实是上下） w(i-1)
        w=rotateLeft(keys(:,(i-1)*8-7:(i-1)*8));
        % S 盒 映射
        sw=subsbox(w);
        % 轮常量异或
        t=floor(i/4);
        wi=mod(sw+rcon(:,t*8-7:t*8)+keys(:,(i-4)*8-7:(i-4)*8),2);
    else
        wi=mod(keys(:,(i-4)*8-7:(i-4)*8)+keys(:,(i-1)*8-7:(i-1)*8),2);
        % w(i-4) 异或 w(i-1)
    end
    keys=[keys wi];
end
keys=keys(:,33:end);
end