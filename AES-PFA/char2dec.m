% 将字符转化为对应的 十进制数字
% 已测试通过
function dec=char2dec(c)
switch(c)
    case '0'
        dec=0;
    case '1'
        dec=1;
    case '2'
        dec=2;
    case '3'
        dec=3;
    case '4'
        dec=4;
    case '5'
        dec=5;
    case '6'
        dec=6;
    case '7'
        dec=7;
    case '8'
        dec=8;
    case '9'
        dec=9;
    case 'A'
        dec=10;
    case 'B'
        dec=11;
     case 'C'
        dec=12;
    case 'D'
        dec=13;
    case 'E'
        dec=14;
    case 'F'
        dec=15;
end
end