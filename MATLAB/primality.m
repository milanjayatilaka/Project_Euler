% Returns a 1 or 0 indicating whether candidate is a prime or not,
% respectively
function result = primality(candidate)

result = 2;

% 2 or 3 are known primes
if candidate == 2 || candidate == 3
    result = 1;
end

% ....and any multiples of them are not, so...
if mod(candidate,2) == 0 || mod(candidate,3) == 0
    result = 0;
end

% Now we test the higher order primes. Start with 5
i = 5;
w = 2;

% test whether the candidate is equal to or greater than the square of the
% prime in question, starting from 5 onwards.
while i*i <= candidate
    % if the candidate is a multiple of i, it is not a prime
    if mod(candidate,i) == 0
        result = 0;
        break
    end
    
    % increment i by w (which alternates between 2 and 4),
    % moving to the next prime.
    % E.g.: 5 + 2 = 7, 7 + 4 = 11; 11 + 2 = 13, etc.
    i = i + w;
    w = 6 - w;
    
end
% if i^2 is greater than the candidate, we have tested all the divisible
% numbers of the candidate and failed to find even divisors. Hence, we can
% conclude that the candidate is a prime
if result ~= 0
    result = 1;
end

end