#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE teams, games;");

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do

      if [[ $YEAR != "year" ]]
        then
          # get team name
          WINNER_NAME=$($PSQL "SELECT name FROM teams WHERE name='$WINNER'")
            if [[ -z $WINNER_NAME ]]
              then
              #insert new team
              INSERT_WINNER_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")

                if [[ $INSERT_WINNER_NAME == "INSERT 0 1" ]]
                  then
                    echo Inserted team $WINNER
                fi
            fi
      fi

    # GET OPPONENT TEAM NAME
      if [[ $YEAR != "year" ]]
        then
          OPPONENET_NAME=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'")
            if [[ -z $OPPONENT_NAME ]]
              then
              INSERT_OPPONENT_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
                if [[ $INSERT_OPPONENT_NAME == "INSERT 0 1" ]]
                  then
                    echo Inserted team $OPPONENT
                fi
            fi
      fi

  # INSERT GAMES TABLE DATA

    if [[ YEAR != "year" ]]
      then
      
        WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")

        OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

        #INSERT NEW GAMES ROW
        INSERT_GAME=$($PSQL "INSERT INTO games(year, round, opponent_id, winner_goals, opponent_goals, winner_id) VALUES ($YEAR, '$ROUND', $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS, $WINNER_ID)")

          if [[ $INSERT_GAME == "INSERT 0 1" ]]
            then
              echo New game added: $YEAR, $ROUND, $WINNER_ID VS $OPPONENT_ID, score $WINNER_GOALS : $OPPONENT_GOALS
          fi
    fi
    
done

# Mispelled opponent for about 4 hours.
