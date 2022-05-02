When defining a class, we typically focus on two things:
State: Storing data describing themselves (variables)
Behavior: Defining actions that can be performed on them (methods)


# class MathGame
- State: track the state of the game (active or ended)
- State: track current question number
- Behaviour: Announce current scores for each Player (at end of each turn)
- Behaviour: Announce winning Player & score (at end of game)


# class Turn
- State: track current player turn
- Behaviour: generate a new question


# class Player < MathGame
- State: player name
- State: track the number of lives for a player

