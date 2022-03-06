% lastkey=bit2hex(state2bit(keys(:,289:end)))
plot(0:255,rec);
xlabel('Possible value of single byte secret key');
ylabel('Number of occurrences per byte in the last round');
title(['Total number of ciphertext : ',num2str(loop)]);