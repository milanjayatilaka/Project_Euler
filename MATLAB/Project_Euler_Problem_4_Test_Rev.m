clear;

upper = 999*999;
lower = 100*100;

for i = upper:-1:lower
    test = palindrome(i);
    if test == 1
        for j = 999:-1:100
            residue = mod(i,j);
            if residue == 0
                if 999 > i/j > 100
                    solution = test;
                    break;
                end
            end
        end
    end
end