function won = playGame(team1Stat, team2Stat)
    rng(round((team1Stat + team2Stat) .* 1000), 'twister')
    team1Pct = max([team1Stat team2Stat]) ./ (team1Stat + team2Stat);
    winner = rand();
    won = false;
    if team1Stat > team2Stat
        won = winner <= team1Pct;
    else
        won = winner > team1Pct;
    end
end