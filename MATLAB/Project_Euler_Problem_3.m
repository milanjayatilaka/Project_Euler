clear;

% Number whose largest prime factor we wish to find
candidate = 600851475143;

% initialize the counter
i = 1;

% initialize container
highest_prime_factor = 0;

% until we have a winner...
while highest_prime_factor == 0
    % if we see a multiple...
    if mod(candidate,i) == 0
        % test for primality...
        if primality(candidate/i) == 1
            % 1st prime number we see is the winner!
            highest_prime_factor = candidate/i;
            break
        end
    end
    % moving from the largest factor (itself) to lower factors...
    i = i + 1;
end
