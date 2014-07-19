clear;

limit = 4000000;

sum = 0;

j_n_minus_one = 1;
j_n_minus_two = 1;
j = 0;
i = 1;
while j < limit
    j = j_n_minus_one + j_n_minus_two;
    if mod(j,2) == 0
        sum = sum + j;
    end
    j_n_minus_two = j_n_minus_one;
    j_n_minus_one = j;
    store(i + 2) = j;
    store(i + 1) = j_n_minus_one;
    store(i) = j_n_minus_two;
    i = i + 1;
end