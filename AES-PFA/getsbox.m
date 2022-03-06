% 取 s 盒中元素,未必要用 也可以将代码段独立出来使用，这样只需要定义一次变量
function s=getsbox(c)
row=bin2dec(num2str(c(1:4)));
col=bin2dec(num2str(c(5:8)));
box=sbox(1);
str=box(row+1,col*2+1:col*2+2);
s=str;
end