clear;
candidate = 20;
sum = 0;

% the exit condition is if ALL integers from 1 to 20 evenly divide the
% candidate
while sum < 20
    % cycle through all the possible divisors
    sum = 0;
    for j = 20:-1:1
        % if even 1 of the numbers is indivisible, we can skip this
        % candidate all together
        if mod(candidate,j) > 0
            break;
        end
        % if the candidate is divisible, start the accumulator; for a
        % winner, we should end up with 20
        if mod(candidate,j) == 0
            sum = sum + 1;
        end
    end
    % if the accumulator is equal to 20, we have a winner!
    if sum == 20
        solution = candidate;
        fprintf('The smallest number divisible by all the numbers from 20 to 1 is %d\n',solution);
        break
    end
    candidate = candidate + 20;
end