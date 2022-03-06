% 秘钥扩展中的行位移
function s=rotateLeft(w)
s=w(2:4,:);
s=[s;w(1,:)];
end