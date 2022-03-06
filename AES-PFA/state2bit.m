%% ×´Ì¬¾ØÕó×ª»»ÎªbitĞòÁĞ
% ÒÑ²âÊÔ
function output=state2bit(input)
state=input;
output=[];
for i=1:4
    temp=[];
    for j=1:4
        temp=[temp state(j,8*i-7:8*i)];
    end
    output=[output temp];
end
end