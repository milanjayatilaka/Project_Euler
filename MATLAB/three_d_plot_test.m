clear;
l = 1;

for i = 1:1000
    for j = 1:1000
        k = sqrt( i*i + j*j );
        if mod(k,1) == 0
            sum = i + j + k;
            if (sum > 900) && (sum < 1100)
                store_2(i,j) = sum;
                store_3(i,k) = sum;
                store_4(j,k) = sum;
            end
            %             store(l,1) = i;
            %             store(l,2) = j;
            %             store(l,3) = k;
            %             store(l,4) = sum;
            %             l = l + 1;
        end
    end
end

surfl(store_2);
figure
surfl(store_3);
figure
surfl(store_4);