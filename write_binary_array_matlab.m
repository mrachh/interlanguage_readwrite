if exist('test_array_matlab.bin', 'file')
    !rm test_array_matlab.bin;
end
fileId = fopen('test_array_matlab.bin', 'w');
n = 100;
a = rand(n,1);

m1 = 2;
m2 = 3;
b = rand(m1, m2);

fwrite(fileId, n, 'uint32');
fwrite(fileId, a, 'double');
fwrite(fileId, m1, 'uint32');
fwrite(fileId, m2, 'uint32');
fwrite(fileId, b, 'double');
fclose(fileId);


