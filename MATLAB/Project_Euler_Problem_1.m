clear;

limit = 1000;

sum = 0;
j = 1;

while j < limit
    if mod(j,3) == 0 || mod(j,5) == 0
        sum = sum + j;
    end
    j = j + 1;
end