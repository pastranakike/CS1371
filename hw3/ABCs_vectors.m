% DO NOT CHANGE THIS LINE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [A, B, C, D, E, F, G, H, I, J, K, L] = ABCs_vectors(num, vec, vec2)
rng(1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Directions:
% Write the code to satisify the following directions. For each part, store
% your answer in the variable that is specified within the parantheses. 
%   Ex. Add 1 + 1. (GT)
% That means store the value of 1 + 1 in the variable GT, like so:
%   Ex. GT = 1 + 1;

% Given Input Variables (3):
%   1. (double) num - A positive integer. 
%   2. (double) vec - A row vector of numbers with at least 5 elements
%   3. (double) vec2 - Another row vector of numbers 

% 1. Create a vector that consists of "num" equally spaced numbers between 
% 2 and 11 (inclusive). Use the linspace() function. (A)
A = linspace(2,11,num);

% 2. Create a vector that goes from 3 to "num" in steps of 2. Use the 
% colon operator. (B)
B = [3:2:num];

% 3. Create a row vector of length "num" that consists only of 6's
% ([6 6 ...]). Use the zeros() or ones() function. (C)
C = ones(1,num).*6;

% 4. Create a column vector of length "num" that consists of random numbers 
% from a uniform distribution between 2 and 9. (D)
D = 2 + (9-2).*rand(num,1);

% 5. Find the number of elements in the vector "vec." (E)
E = numel(vec);

% 6. Find the smallest element in "vec" (F), and the index at which it is
% located (G).
F = min(vec);
G = find(min(vec));

% 7. Sort the vector "vec" and store the sorted vector in (H).
H = sort(vec);

% 8. Concatenate vectors "vec" and "vec2", in that order (I).
I = [vec vec2];

% 9. Reverse "vec2" and store the resulting vector in (J).
J = fliplr(vec2);

% 10. Find the last element of "vec2" (K). Do it without using the 
% length() function.
K = vec2(end);

% 11. Starting with the first element, find every other element in "vec2." 
% That is, find every element that occurs at an odd-numbered index (L).
L = vec2(1:2:end);

end