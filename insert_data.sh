#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
 echo $($PSQL "TRUNCATE TABLE teams, games")
 echo $($PSQL "ALTER SEQUENCE teams_team_id_seq RESTART WITH 1")
 echo $($PSQL "ALTER SEQUENCE games_game_id_seq RESTART WITH 1")

 cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
 do
  #teams

  if [[ $WINNER != "winner" && $OPPONENT != "opponent" ]]
  then 
    INSERT_WIN_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER'), ('$OPPONENT') ON CONFLICT DO NOTHING")
  fi
  
  #games
  if [[ $YEAR != "year" && $ROUND != "round" && $WINNER_GOALS != "winner_goals" && $OPPONENT_GOALS != "opponent_goals" ]]
  then
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")
    INSERT_INFO=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
  fi

 done