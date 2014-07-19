% Checks whether a number is a palindrome or not

function result = palindrome(candidate)

% create a temp. var. which holds the string of the number entered
temp = num2str(candidate);
% find the number length and store
digits = length(temp);
% preallocate an array with the number of digits of the entered number
holder = zeros(digits);
%record the middle digit of odd numbers entered
pivot = 0;
% variable to collect the residue of the sum of symmetric elements
collector = 0;

% check if the number is odd or even; a set pivot_flag means odd
if mod(digits,2) == 0
    pivot_flag = 0;
else
    pivot_flag = 1;
    pivot = ((digits - 1)/2) + 1;
end

% use str2num to convert each element in the string back to integers and
% load them into the holder array
for i = 1:digits
    holder(i) = str2num(temp(i));
end

% check if the number is odd or even; for even numbers, the line of
% symmetry is at "the number of digits/2"

if pivot_flag == 0
    for j = 1:(digits/2)
        collector = (holder(j) - holder(digits + 1 - j));
        if collector ~= 0
            result = 0;
            break;
        end
    end
end

% for odd numbers, the line of symmetry is the pivot point
if pivot_flag == 1
    for k = 1:(pivot - 1)
        collector = (holder(k) - holder(digits + 1 - k));
        if collector ~= 0
            result = 0;
            break;
        end
    end
end

% if any subtraction yields a non-zero number, the candidate is not a
% palindrome; if ALL subtractions yield zero, the number is a palindrome

if collector == 0
    result = 1;
else
    result = 0;
end


end