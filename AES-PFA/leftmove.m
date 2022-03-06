function s=leftmove(bits,n)
l=length(bits);
temp=bits(n+1:end);
temp=[temp zeros(1,n)];
s=temp;
end