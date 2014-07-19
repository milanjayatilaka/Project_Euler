% Finds the highest palindromic number of a set of products
clear;
% Load test value with 0 to begin
test = 0;
% counters
k = 1;
l = 1;

% limit
upper = 999;
lower = 100;

% preload i with the upper limit
i = upper;

% preload the datum with a low number, to jump-start the while loop
datum = 1;

% exit the loop when the highest palindrome found so far is lower than the
% highest possible number for that cycle
while (i*upper) > datum
    % for each value of i, cycle through all possible n digit combinations
    for j = i:-1:lower
        % compute the product and test for palindromacy
        result = i*j;
        test = palindrome(result);
        % if the product is a palindrome...
        if test == 1
            % check if it is the highest we've seen so far
            if result > datum
                % if so, make the palindrome the new reference
                datum = result;
            end
        end
    end
    % move i along to the next value
    i = i - 1;
end

fprintf('The Largest Palindrom is: %d \n',datum);