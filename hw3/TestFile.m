%% Function Name: teachersPet
%
% Test Cases:
[sort11] = teachersPet_soln([75 84 72 71 87 91 54], 'OTEITLG', 'LGTTIEO')
% 	sort1 => LE TI TG OL ET IT GO
% 
[sort21] = teachersPet_soln([66 70 64 89 65 99 100], 'ILCHBND', 'TDKOATO')
% 	sort2 => DO NT HO LD IT BA CK
% 
[sort31] = teachersPet_soln([88 77 100], 'YRA', 'MEN')
% 	sort3 => AN YM RE
%
%--------------------------------------------------------------------------------
%% Function Name: letterWeave
%
% Test Cases:
[decoded11] = letterWeave_soln('Ti sasnec', 'hsi  etne', 'tset')
% 	decoded1 => This is atest sentence
% 
[decoded21] = letterWeave_soln('Tecwjme h on', 'h o uprtemo!', 'vo de')
% 	decoded2 => The cow jumped over the moon!
% 
[decoded31] = letterWeave_soln('TeQikBonFOe h ayDg', 'h uc rw ovrteLz o.', ' spmuJ x')
% 	decoded3 => The Quick Brown Fox Jumps Over the Lazy Dog.
%
%--------------------------------------------------------------------------------
%% Function Name: compareContour
%
% Test Cases:
[isSame11] = compareContour_soln([1, 2, 3], [2, 3, 4])
% 	isSame1 =>      1
% 
[isSame21] = compareContour_soln([-3, 0, -10], [0, 2, 3])
% 	isSame2 =>      0
% 
[isSame31] = compareContour_soln([3, 0, 3], [10, -10, 10])
% 	isSame3 =>      1
% 
[isSame41] = compareContour_soln([3, 0, 0], [10, -10, -10])
% 	isSame4 =>      1
%
%--------------------------------------------------------------------------------
%% Function Name: weeklyCalendar
%
% Test Cases:
[newDays11, newDates11] = weeklyCalendar_soln('M T W R F S N', [3 4 5 6 7 8 9], 3)
% 	newDays1 => R F S N M T W
% 	newDates1 =>      6     7     8     9    10    11    12
% 
[newDays21, newDates21] = weeklyCalendar_soln('N M T W R F S', [26 27 28 29 30 1 2], -5)
% 	newDays2 => T W R F S N M
% 	newDates2 =>     21    22    23    24    25    26    27
% 
[newDays31, newDates31] = weeklyCalendar_soln('T W R F S N M', [11 12 13 14 15 16 17], 365)
% 	newDays3 => W R F S N M T
% 	newDates3 =>     16    17    18    19    20    21    22
%% Function Name: teachersPet
%
% Test Cases:
[sort1] = teachersPet([75 84 72 71 87 91 54], 'OTEITLG', 'LGTTIEO')
% 	sort1 => LE TI TG OL ET IT GO
% 
[sort2] = teachersPet([66 70 64 89 65 99 100], 'ILCHBND', 'TDKOATO')
% 	sort2 => DO NT HO LD IT BA CK
% 
[sort3] = teachersPet([88 77 100], 'YRA', 'MEN')
% 	sort3 => AN YM RE
%
%--------------------------------------------------------------------------------
%% Function Name: letterWeave
%
% Test Cases:
[decoded1] = letterWeave('Ti sasnec', 'hsi  etne', 'tset')
% 	decoded1 => This is atest sentence
% 
[decoded2] = letterWeave('Tecwjme h on', 'h o uprtemo!', 'vo de')
% 	decoded2 => The cow jumped over the moon!
% 
[decoded3] = letterWeave('TeQikBonFOe h ayDg', 'h uc rw ovrteLz o.', ' spmuJ x')
% 	decoded3 => The Quick Brown Fox Jumps Over the Lazy Dog.
%
%--------------------------------------------------------------------------------
%% Function Name: compareContour
%
% Test Cases:
[isSame1] = compareContour([1, 2, 3], [2, 3, 4])
% 	isSame1 =>      1
% 
[isSame2] = compareContour([-3, 0, -10], [0, 2, 3])
% 	isSame2 =>      0
% 
[isSame3] = compareContour([3, 0, 3], [10, -10, 10])
% 	isSame3 =>      1
% 
[isSame4] = compareContour([3, 0, 0], [10, -10, -10])
% 	isSame4 =>      1
%
%--------------------------------------------------------------------------------
%% Function Name: weeklyCalendar
%
% Test Cases:
[newDays1, newDates1] = weeklyCalendar('M T W R F S N', [3 4 5 6 7 8 9], 3)
% 	newDays1 => R F S N M T W
% 	newDates1 =>      6     7     8     9    10    11    12
% 
[newDays2, newDates2] = weeklyCalendar('N M T W R F S', [26 27 28 29 30 1 2], -5)
% 	newDays2 => T W R F S N M
% 	newDates2 =>     21    22    23    24    25    26    27
% 
[newDays3, newDates3] = weeklyCalendar('T W R F S N M', [11 12 13 14 15 16 17], 365)
% 	newDays3 => W R F S N M T
% 	newDates3 =>     16    17    18    19    20    21    22
%