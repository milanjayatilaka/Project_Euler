% finds the pythagorean triplets whose sum equals 1000
clear;

target = 1000;

for a = 1:target
    for b = a:target
        c = sqrt((a*a) + (b*b));
        if (mod(c,1) == 0)
            sum = a + b + c;
            if sum == target
                product = a*b*c;
                break;
            end
        end
    end
end