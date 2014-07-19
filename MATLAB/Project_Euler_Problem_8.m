clear;

fid = -1;
msg = '';
while fid < 0
    disp(msg);
    filename = 'long_assed_number.txt';
    [fid,msg] = fopen(filename);
    string = fscanf(fid,'%s');
    fclose('all');
end

% long_assed_number = zeros(1,length(string));

for i = 1:length(string)
    long_assed_number(i) = str2num(string(i));
end

product = 1;
datum = 0;

for j = 1:987
    for k = j:(j + 12)
        product = product*(long_assed_number(k));
    end
    if product > datum
        datum = product;
    end
    product = 1;
end

fprintf('The Largest Product of Adjacent Numbers in this 1000 Digit Number is %d\n', datum);