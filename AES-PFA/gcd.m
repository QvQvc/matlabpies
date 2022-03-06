% 整数求最大公约数
function c=gcd(a,b)
% 默认 a>b
if(a<b) 
    c=gcd(b,a);
end
if(b==0)
    c=a;
else
    c=gcd(b,mod(a,b));
end
end