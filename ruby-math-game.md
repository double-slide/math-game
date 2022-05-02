When defining a class, we typically focus on two things:
State: Storing data describing themselves (variables)
Behavior (Method): Defining actions that can be performed on them (methods)


## class Game
### State/Behaviour Breakdown
- State: current_player
- Method: Announce current scores for each Player (at end of each turn)
- Method: Announce winning Player & score (at end of game)
- Method: loop over gameplay
  - generate a new question
  - get input from player
  - compare input to answer
### Initialized with
- current_player


## class Player
### State/Behaviour Breakdown
- State: player_name
- State: player_lives
- Method: lose life
### Initialized with
- player_name
- player_lives
