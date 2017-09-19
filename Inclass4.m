%AW: looks good. see 1 comment below. 0.99/1. 

%Inclass assignment 4. Due at the start of class on 9/12/17

%Walter Frank Lenoir

%1. (a) Write code that makes a file with the words "Random numbers 1" on its
%own line, then 10 lines with 13 random numbers each, then "Random numbers
%2" on its own line, then 9 lines with 7 random numbers each. (b) Write code
%that reads only the first line of random numbers in the file and stores
%them as numbers in an array. 

%a) 
filename = "rand_nums.txt";
fid = fopen(filename,'w');
fprintf(fid, "Random numbers 1\n");
for i = 1:10
    for j = 1:13
        fprintf(fid, "%i ",rand);
    end
    fprintf(fid, "\n");
end
fprintf(fid, "Random numbers 2\n");
for i = 1:9
    for j = 1:7
        fprintf(fid, "%i ",rand);
    end
    fprintf(fid, "\n");
end
fclose('all');

%b)

fid = fopen(filename,'r');
line1 = fgetl(fid); %run fgetl twice to get first numeric line
line1 = strsplit(fgetl(fid),' ');
line1(length(line1)) = []; %removing last element due to space at end of line
var1num = cellfun(@str2num,line1);

% 2. Write a function that takes an array as input and returns a logical
% variable which is true if the sum of the numbers in the array is greater
% than or equal to 10 and false if it is less than 10. 
%Walter Frank Lenoir

%AW: this is basically correct, but be careful as you have written your function t will be a double that stores the numerical
% value of 0 or 1. you must explicitly cast as logical or use the keywords true/false to get a logical. -0.01. 
t = greaterthanten(var1num);
disp(t);
