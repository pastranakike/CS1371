% Test Cases:
[result1] = arrReplace([4, 0, 4; 0, 4, 0; 4, 0, 4], magic(3), 4)
% 	result1 =>  
%      8     0     6
%      0     5     0
%      4     0     2
% 
[result2] = arrReplace([12 3 7 1; 1 12 7 1; 1 3 12 1; 1 3 7 12], [1 2 4 6; 8 3 9 0; 4 5 7 2; 0 3 1 1], 12)
% 	result2 =>  
%      1     3     7     1
%      1     3     7     1
%      1     3     7     1
%      1     3     7     1
% 
[result3] = arrReplace([1 9 2 3 5; 8 13 9 9 55; 89 9 233 9 9], [100 1 53 19 70; 8 96 21 34 1678; 722 144 41 377 610], 9)
% 	result3 =>  
%      1     1     2     3     5
%      8    13    21    34    55
%     89   144   233   377   610
%
%--------------------------------------------------------------------------------
%% Function Name: decodeASCII
%
% Setup:
	load studentCasesASCII.mat
%
% Test Cases:
[out1] = decodeASCII(in1, 2, 2, '@', 3)
% 	out1 => Value too large to display. Value should match that of the solution function.
% 
[out2] = decodeASCII(in2, .5, 1.5, '*', 1)
% 	out2 => Value too large to display. Value should match that of the solution function.
% 
[out3] = decodeASCII(in3, .75, 2, 'X', 2)
% 	out3 => Value too large to display. Value should match that of the solution function.
%
%--------------------------------------------------------------------------------
%% Function Name: GSquare
%
% Setup:
	load GSquareStudentCases.mat
%
% Test Cases:
[finalGrade1] = GSquare(grades1, comments1, gradeMode1)
% 	finalGrade1 =>                       78.6
% 
[finalGrade2] = GSquare(grades2, comments2, gradeMode2)
% 	finalGrade2 =>                       44.8
% 
[finalGrade3] = GSquare(grades3, comments3, gradeMode3)
% 	finalGrade3 =>                       36.7
%
%--------------------------------------------------------------------------------
%% Function Name: matCraft
%
% Setup:
	load matCraft_studentCases.mat
%
% Test Cases:
[scores1, dist1] = matCraft(in1, in2, in3)
% 	scores1 =>                        -19                     2.616
% 	dist1 =>      0
% 
[scores2, dist2] = matCraft(in4, in5, in6)
% 	scores2 =>                        454                      5.12
% 	dist2 =>                      1.414
% 
[scores3, dist3] = matCraft(in7, in8, in9)
% 	scores3 =>                       9695                     4.298
% 	dist3 =>      1
%
%--------------------------------------------------------------------------------
%% Function Name: sieve
%
% Test Cases:
[out4] = sieve(10)
% 	out1 =>      2     3     5     7
% 
[out5] = sieve(4)
% 	out2 =>      2     3
% 
[out6] = sieve(100)
% 	out3 =>  
%   Columns 1 through 13                                                        
%      2     3     5     7    11    13    17    19    23    29    31    37    41
%   Columns 14 through 25                                                       
%     43    47    53    59    61    67    71    73    79    83    89    97      
% 
[out7] = sieve(10609)
% 	out4 => Value too large to display. Value should match that of the solution function.

% Test Cases:
[result1_1] = arrReplace_soln([4, 0, 4; 0, 4, 0; 4, 0, 4], magic(3), 4)
% 	result1 =>  
%      8     0     6
%      0     5     0
%      4     0     2
% 
[result2_1] = arrReplace_soln([12 3 7 1; 1 12 7 1; 1 3 12 1; 1 3 7 12], [1 2 4 6; 8 3 9 0; 4 5 7 2; 0 3 1 1], 12)
% 	result2 =>  
%      1     3     7     1
%      1     3     7     1
%      1     3     7     1
%      1     3     7     1
% 
[result3_1] = arrReplace_soln([1 9 2 3 5; 8 13 9 9 55; 89 9 233 9 9], [100 1 53 19 70; 8 96 21 34 1678; 722 144 41 377 610], 9)
% 	result3 =>  
%      1     1     2     3     5
%      8    13    21    34    55
%     89   144   233   377   610
%
%--------------------------------------------------------------------------------
%% Function Name: decodeASCII
%
% Setup:
	load studentCasesASCII.mat
%
% Test Cases:
[out1_1] = decodeASCII_soln(in1, 2, 2, '@', 3)
% 	out1 => Value too large to display. Value should match that of the solution function.
% 
[out2_1] = decodeASCII_soln(in2, .5, 1.5, '*', 1)
% 	out2 => Value too large to display. Value should match that of the solution function.
% 
[out3_1] = decodeASCII_soln(in3, .75, 2, 'X', 2)
% 	out3 => Value too large to display. Value should match that of the solution function.
%
%--------------------------------------------------------------------------------
%% Function Name: GSquare
%
% Setup:
	load GSquareStudentCases.mat
%
% Test Cases:
[finalGrade1_1] = GSquare_soln(grades1, comments1, gradeMode1)
% 	finalGrade1 =>                       78.6
% 
[finalGrade2_1] = GSquare_soln(grades2, comments2, gradeMode2)
% 	finalGrade2 =>                       44.8
% 
[finalGrade3_1] = GSquare_soln(grades3, comments3, gradeMode3)
% 	finalGrade3 =>                       36.7
%
%--------------------------------------------------------------------------------
%% Function Name: matCraft
%
% Setup:
	load matCraft_studentCases.mat
%
% Test Cases:
[scores1_1, dist1_1] = matCraft_soln(in1, in2, in3)
% 	scores1 =>                        -19                     2.616
% 	dist1 =>      0
% 
[scores2_1, dist2_1] = matCraft_soln(in4, in5, in6)
% 	scores2 =>                        454                      5.12
% 	dist2 =>                      1.414
% 
[scores3_1, dist3_1] = matCraft_soln(in7, in8, in9)
% 	scores3 =>                       9695                     4.298
% 	dist3 =>      1
%
%--------------------------------------------------------------------------------
%% Function Name: sieve
%
% Test Cases:
[out4_1] = sieve_soln(10)
% 	out1 =>      2     3     5     7
% 
[out5_1] = sieve_soln(4)
% 	out2 =>      2     3
% 
[out6_1] = sieve_soln(100)
% 	out3 =>  
%   Columns 1 through 13                                                        
%      2     3     5     7    11    13    17    19    23    29    31    37    41
%   Columns 14 through 25                                                       
%     43    47    53    59    61    67    71    73    79    83    89    97      
% 
[out7_1] = sieve_soln(10609)
% 	out4 => Value too large to display. Value should match that of the solution function.

check1 = isequal(result1, result1_1)
check2 = isequal(result2, result2_1)
check3 = isequal(result3, result3_1)
check4 = isequal(out1, out1_1)
check5 = isequal(out2, out2_1)
check6 = isequal(out3, out3_1)
check7 = isequal(finalGrade1, finalGrade1_1)
check7 = isequal(finalGrade2, finalGrade2_1)
check7 = isequal(finalGrade3, finalGrade3_1)
check8 = isequal([scores1, dist1],[scores1_1, dist1_1])
check8 = isequal([scores2, dist2],[scores2_1, dist2_1])
check9 = isequal([scores3, dist3],[scores3_1, dist3_1])
check10 = isequal(out4, out4_1)
check11 = isequal(out5, out5_1)
check12 = isequal(out6, out6_1)
check13 = isequal(out7, out7_1)
