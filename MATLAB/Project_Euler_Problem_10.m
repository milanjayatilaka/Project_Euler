clear;
limit = 2000000;
sum = 0;
% i = 5;
% w = 2;
% store = [2,3,5];
% index = 4;
% flag = 0;
% sum = 10;

% while index <= 200000
%     % increment i by w (which alternates between 2 and 4),
%     % moving to the next prime.
%     % E.g.: 5 + 2 = 7, 7 + 4 = 11; 11 + 2 = 13, etc.
%     i = i + w;
%     w = 6 - w;
%
%     % check if the number is evenly divisible by any other primes; if so,
%     % don't load it into the array
%     for j = 1:length(store)
%         if mod(i,store(j)) == 0
%             flag = 1;
%             break;
%         end
%     end
%     if flag == 0
%         store(index) = i;
%         index = index + 1;
%         sum = sum + i;
%     else
%         flag = 0;
%     end
% end
%
% fprintf('The sum of all primes under 2 million is %d\n',sum);
j = 1;
for i = limit:-1:1
    if primality(i) == 1
        store(j) = i;
        sum = sum + i;
        j = j + 1;
    end
end

fprintf('The sum of all primes under 2 million is %d\n',sum);
