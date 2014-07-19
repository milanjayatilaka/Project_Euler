clear;

sum_square = 0;
square_sum = 0;

for i = 1:100
    sum_square = sum_square + i^2;
    square_sum = square_sum + i;
end

solution = square_sum^2 - sum_square;

fprintf('The difference is: %d\n',solution);