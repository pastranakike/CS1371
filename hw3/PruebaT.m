% Write a function named priceCalculator that takes in the price of a meal and a
% tip percentage (pretend there's no tax).  Output the final price rounded to the
% nearest cent.
clc 
clear
sciNum = '3.9*10^-5'
[base, rest] = strtok(sciNum, '*');
base = str2num(base);
rest = rest(5:end); % delete '*10^'
rest = str2num(rest);
num = base * 10^rest;