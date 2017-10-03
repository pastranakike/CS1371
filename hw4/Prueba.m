[newVec1] = fivePrime([4 5 6])
% 	newVec1 =>      4   NaN     6
% 
[newVec2] = fivePrime([7 5 7 9 10 7 15])
% 	newVec2 =>      7     5     7   NaN    10     7    15
% 
[newVec3] = fivePrime([2 12 7 8 7 2 15 9])
% 	newVec3 =>      2    12   NaN     8   NaN     2    15     9

[newVec1_1] = fivePrime_soln([4 5 6])
% 	newVec1 =>      4   NaN     6
% 
[newVec2_1] = fivePrime_soln([7 5 7 9 10 7 15])
% 	newVec2 =>      7     5     7   NaN    10     7    15
% 
[newVec3_1] = fivePrime_soln([2 12 7 8 7 2 15 9])
% 	newVec3 =>      2    12   NaN     8   NaN     2    15     9

CheckFP1 = isequaln(newVec1, newVec1_1);
CheckFP2 = isequaln(newVec2, newVec2_1);
CheckFP3 = isequaln(newVec3, newVec3_1); 

%GiraffeCase

% Test Cases:
[out1] = giraffeCase('I want to be a giraffe someday!')
% 	out1 => IwanTtObEAGIRAFFEsomedaY
% 
[out2] = giraffeCase('They''re my favorite exhibit at the zoo.')
% 	out2 => theyrEmYfavoritEexhibiTaTthEzoO
% 
[out3] = giraffeCase('Giraffes live in    the African Savannah. Not the  city in Georgia.')
% 	out3 => GIRAFFESlivEiNthEafricaNsavannaHnoTthEcitYiNgeorgiA
% Test Cases:
[out1_1] = giraffeCase_soln('I want to be a giraffe someday!')
% 	out1 => IwanTtObEAGIRAFFEsomedaY
% 
[out2_1] = giraffeCase_soln('They''re my favorite exhibit at the zoo.')
% 	out2 => theyrEmYfavoritEexhibiTaTthEzoO
% 
[out3_1] = giraffeCase_soln('Giraffes live in    the African Savannah. Not the  city in Georgia.')
% 	out3 => GIRAFFESlivEiNthEafricaNsavannaHnoTthEcitYiNgeorgiA
Giraffe1 = isequal(out1, out1_1);
Giraffe2 = isequal(out2, out2_1);
Giraffe3 = isequal(out3, out3_1);

%CEASARSHIFT

[o1] = caesarShift('i love matlab', 0)
% 	out1 => I LOVE MATLAB6
% 
[o2] = caesarShift('Alea Jacta Est', 10)
% 	out1 => QVVQ TQSDQ VID11
% 
[o3] = caesarShift('Inter arma enim silent leges', -100)
% 	out1 => ERXAV WVIW AREI OEPARX PACAO12

[o1_1] = caesarShift('i love matlab', 0)
% 	out1 => I LOVE MATLAB6
% 
[o2_1] = caesarShift('Alea Jacta Est', 10)
% 	out1 => QVVQ TQSDQ VID11
% 
[o3_1] = caesarShift('Inter arma enim silent leges', -100)
% 	out1 => ERXAV WVIW AREI OEPARX PACAO12

CaesarShift1 = isequal(o1, o1_1);
CaesarShift2 = isequal(o2, o2_1);
CaesarShift3 = isequal(o3, o3_1);

%CriminalMinds

[suspectNumber1] = criminalMinds([true true false true], [true false false true], [true true false true], [true true false true])
% 	suspectNumber1 => Suspect #2 is lying.

[suspectNumber2] = criminalMinds([true false false], [true false true], [true false true], [true false true])
% 	suspectNumber2 => Suspect #1 is lying.
% 
[suspectNumber3] = criminalMinds([false false false false false], [false false false false false], [false false false false false], [false true false false false])
% 	suspectNumber3 => Suspect #4 is lying.
% 
[suspectNumber4] = criminalMinds([true true], [false false], [true true], [true true])
% 	suspectNumber4 => Suspect #2 is lying.

[suspectNumber1_1] = criminalMinds_soln([true true false true], [true false false true], [true true false true], [true true false true])
% 	suspectNumber1 => Suspect #2 is lying.

[suspectNumber2_1] = criminalMinds_soln([true false false], [true false true], [true false true], [true false true])
% 	suspectNumber2 => Suspect #1 is lying.
% 
[suspectNumber3_1] = criminalMinds_soln([false false false false false], [false false false false false], [false false false false false], [false true false false false])
% 	suspectNumber3 => Suspect #4 is lying.
% 
[suspectNumber4_1] = criminalMinds_soln([true true], [false false], [true true], [true true])
% 	suspectNumber4 => Suspect #2 is lying.

CheckCM1 = isequal(suspectNumber1, suspectNumber1_1);
CheckCM2 = isequal(suspectNumber2, suspectNumber2_1);
CheckCM3 = isequal(suspectNumber3, suspectNumber3_1);
CheckCM4 = isequal(suspectNumber4, suspectNumber4_1);
