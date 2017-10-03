%% Function Name: findDateLocation

% Test Cases:
[loc1] = findDateLocation('Wendy''s', 'McDonald''s', [1 2.5 4; 8.5 7.5 9], ['-';'+'], [10; 9.5])
% 	loc1 => McDonald's
% 
[loc2] = findDateLocation('Georgia Aquarium', 'World of Coca-Cola', [10 8 0 9 0 9.2; 8 8 8 8.5 8 8.2], ['+';'+'], [8; 9])
% 	loc2 => Georgia Aquarium
% 
[loc3] = findDateLocation('Paris', 'Rome', [10 10 10 0 9.2 0 1 3 0 7.1 7.2 0 0 0 7.2 10; 9.2 10 9.87 0 9.2 1.6 0 0 0 7.8 8.2 0 0 1.4 6.5 10], ['-';'-'], [9.8; 9.9])
% 	loc3 => Rome
%% Function Name: loveMeTinder
% Test Cases:
[swipe1] = loveMeTinder([22,3], 'Harrison,21,16,UCLA,family picture,Cats are better than dogs')
% 	swipe1 => Swipe left on Harrison's picture
% 
[swipe2] = loveMeTinder([25,15], 'Samantha,20,7,Brandeis,no picture,"If you want something done, ask a woman"')
% 	swipe2 => Swipe right on Samantha's picture
% 
[swipe3] = loveMeTinder([30,2], 'Daniel,32,5,UAB,selfie,CS1371 is the best class ever')
% 	swipe3 => Swipe left on Daniel's picture
% 
[swipe4] = loveMeTinder([19,20], 'Adam,23,15,Georgia Tech,selfie,"Professional MATLAB"')
% 	swipe4 => Super Like Adam's picture
%
%--------------------------------------------------------------------------------
%% Function Name: starCrossed
%
% Setup:
load student.mat
%
% Test Cases:
[out1] = starCrossed(bday1, bday2, log)
% 	out1 => Your stars are crossed...a Aquarius and a Pisces can never be together.
% 
[out2] = starCrossed(bday3, bday4, log)
% 	out2 => Your stars are crossed...a Libra and a Capricorn can never be together.
% 
[out3] = starCrossed(bday5, bday6, log)
% 	out3 => A Virgo and a Gemini? Your stars are aligned! You are destined to be together.
%
%--------------------------------------------------------------------------------
%% Function Name: poker
%
% Setup:
load poker_rubrica.mat
%
% Test Cases:
[winner1] = poker(cards1)
% 	winner1 => Player 3 won with a Three of a Kind.
% 
[winner2] = poker(cards2)
% 	winner2 => Player 5 won with a Straight.
% 
[winner3] = poker(cards3)
% 	winner3 => Thank you for your donation to Hope and Zell Miller.

%% Function Name: findDateLocation

% Test Cases:
[loc11] = findDateLocation_soln('Wendy''s', 'McDonald''s', [1 2.5 4; 8.5 7.5 9], ['-';'+'], [10; 9.5])
% 	loc1 => McDonald's
% 
[loc21] = findDateLocation_soln('Georgia Aquarium', 'World of Coca-Cola', [10 8 0 9 0 9.2; 8 8 8 8.5 8 8.2], ['+';'+'], [8; 9])
% 	loc2 => Georgia Aquarium
% 
[loc31] = findDateLocation_soln('Paris', 'Rome', [10 10 10 0 9.2 0 1 3 0 7.1 7.2 0 0 0 7.2 10; 9.2 10 9.87 0 9.2 1.6 0 0 0 7.8 8.2 0 0 1.4 6.5 10], ['-';'-'], [9.8; 9.9])
% 	loc3 => Rome
%% Function Name: loveMeTinder
% Test Cases:
[swipe11] = loveMeTinder([22,3], 'Harrison,21,16,UCLA,family picture,Cats are better than dogs')
% 	swipe1 => Swipe left on Harrison's picture
% 
[swipe21] = loveMeTinder_soln([25,15], 'Samantha,20,7,Brandeis,no picture,"If you want something done, ask a woman"')
% 	swipe2 => Swipe right on Samantha's picture
% 
[swipe31] = loveMeTinder_soln([30,2], 'Daniel,32,5,UAB,selfie,CS1371 is the best class ever')
% 	swipe3 => Swipe left on Daniel's picture
% 
[swipe41] = loveMeTinder_soln([19,20], 'Adam,23,15,Georgia Tech,selfie,"Professional MATLAB"')
% 	swipe4 => Super Like Adam's picture
%
%--------------------------------------------------------------------------------
%% Function Name: starCrossed
%
% Setup:
load student.mat
%
% Test Cases:
[out11] = starCrossed_soln(bday1, bday2, log)
% 	out1 => Your stars are crossed...a Aquarius and a Pisces can never be together.
% 
[out21] = starCrossed_soln(bday3, bday4, log)
% 	out2 => Your stars are crossed...a Libra and a Capricorn can never be together.
% 
[out31] = starCrossed_soln(bday5, bday6, log)
% 	out3 => A Virgo and a Gemini? Your stars are aligned! You are destined to be together.
%
%--------------------------------------------------------------------------------
%% Function Name: poker
%
% Setup:
load poker_rubrica.mat
%
% Test Cases:
[winner11] = poker_soln(cards1)
% 	winner1 => Player 3 won with a Three of a Kind.
% 
[winner21] = poker_soln(cards2)
% 	winner2 => Player 5 won with a Straight.
% 
[winner31] = poker_soln(cards3)
% 	winner3 => Thank you for your donation to Hope and Zell Miller.
%
%% ISEQUAL CHECK

Check_Date1 = isequal(loc1,loc11);
Check_Date2 = isequal(loc2,loc21);
Check_Date3 = isequal(loc3,loc31);
Check_Tinder1 = isequal(swipe1, swipe11);
Check_Tinder2 = isequal(swipe2, swipe21);
Check_Tinder3 = isequal(swipe3, swipe31);
Check_Tinder4 = isequal(swipe4, swipe41);
Check_Horozcopo_Niche1 = isequal(out1, out11);
Check_Horozcopo_Niche2 = isequal(out2, out21);
Check_Horozcopo_Niche3 = isequal(out3, out31);
Check_Poker1 = isequal(winner1, winner11);
Check_Poker2 = isequal(winner2, winner21);
Check_Poker3 = isequal(winner3, winner31);



