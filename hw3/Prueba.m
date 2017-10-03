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