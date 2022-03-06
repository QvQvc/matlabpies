function s=dec2bitw(n,w)
s=[];
while(n~=0)
    t=mod(n,2);
    s=[t s];
    n=(n-t)/2;
end
a=length(s);
s=[zeros(1,w-a) s];
end