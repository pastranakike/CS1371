%Test Cases 
[g1, l1] = gcdLCM(12, 15)
[g11, l11] = gcdLCM_soln(12, 15)
% 	g1 =>      3
% 	l1 =>     60
% 
[g2, l2] = gcdLCM(11, 29)
[g21, l21] = gcdLCM_soln(11, 29)
% 	g2 =>      1
% 	l2 =>    319
% 
[g3, l3] = gcdLCM(6498, 228)
[g31, l31] = gcdLCM_soln(6498, 228)
% 	g3 =>    114
% 	l3 =>        12996
[gorillaStr1] = gorillaCase('The Cincinnati Zoo leads the US in western lowland gorilla births.')
[gorillaStr11] = gorillaCase_soln('The Cincinnati Zoo leads the US in western lowland gorilla births.')
% 	gorillaStr1 => ThE cincinnati ZoO LeAdS ThE us in WeStErN LoWlAnD GoRiLlA births
% 
[gorillaStr2] = gorillaCase(' In tropical forests,  gorillas are hunted  to provide meat for the Bushmeat Trade.  Logging also destroys Gorilla habitats. ')
[gorillaStr21] = gorillaCase_soln(' In tropical forests,  gorillas are hunted  to provide meat for the Bushmeat Trade.  Logging also destroys Gorilla habitats. ')
% 	gorillaStr2 => Value too large to display. Value should match that of the solution function.
% 
[gorillaStr3] = gorillaCase('-  -  23we98 w8ill   ne678vEr for%32get0../300,$$ha2R3aMb%e    has*h3ta$$g#swag     ')
[gorillaStr31] = gorillaCase_soln('-  -  23we98 w8ill   ne678vEr for%32get0../300,$$ha2R3aMb%e    has*h3ta$$g#swag     ')
% 	gorillaStr3 =>     we will   NeVeR FoRgEtHaRaMbE    HaShTaGsWaG    

% Setup:
	load boards.mat
%
% Test Cases:
[jumps1] = checkers(board1)
[jumps11] = checkers(board1)
% 	jumps1 =>      6
% 
[jumps2] = checkers(board2)
[jumps21] = checkers(board2)
% 	jumps2 =>      2
% 
[jumps3] = checkers(board3)
[jumps31] = checkers(board3)
% 	jumps3 =>     14
% 
[jumps4] = checkers(board4)
[jumps41] = checkers(board4)
% 	jumps4 =>      4

load pkmnBattle_studentCases.mat
%
% Test Cases:
[out1] = pkmnBattle(myPKMN1, enemyPKMN1, myMove1, enemyMove1)
[out11] = pkmnBattle_soln(myPKMN1, enemyPKMN1, myMove1, enemyMove1)
% 	out1 => You lost the battle and blacked out! The enemy had 96 HP remaining.
% 
[out2] = pkmnBattle(myPKMN2, enemyPKMN2, myMove2, enemyMove2)
[out21] = pkmnBattle_soln(myPKMN2, enemyPKMN2, myMove2, enemyMove2)
% 	out2 => Congratulations, Champion of the Pokemon League! Your Pokemon survived with 45 HP.
% 
[out3] = pkmnBattle(myPKMN3, enemyPKMN3, myMove3, enemyMove3)
[out31] = pkmnBattle_soln(myPKMN3, enemyPKMN3, myMove3, enemyMove3)
% 	out3 => Congratulations, Champion of the Pokemon League! Your Pokemon survived with 792 HP.

Check1 = isequal(g1, g11);
Check2 = isequal(g2, g21);
Check3 = isequal(g3, g31);
Check5 = isequal(l1, l11);
Check6 = isequal(l2, l21);
Check7 = isequal(l3, l31);
Check91 = isequal(gorillaStr1, gorillaStr11);
Check92 = isequal(gorillaStr2, gorillaStr21);
Check93 = isequal(gorillaStr3, gorillaStr31);
Check10 = isequal(jumps1, jumps11);
Check11 = isequal(jumps2, jumps21);
Check12 = isequal(jumps3, jumps31);
Check13 = isequal(jumps4, jumps41);
Check14 = isequal(out1, out11);
Check15 = isequal(out2, out21);
Check16 = isequal(out3, out31);
