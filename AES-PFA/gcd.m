% ���������Լ��
function c=gcd(a,b)
% Ĭ�� a>b
if(a<b) 
    c=gcd(b,a);
end
if(b==0)
    c=a;
else
    c=gcd(b,mod(a,b));
end
end