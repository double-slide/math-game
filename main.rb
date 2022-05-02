require 'pp'
require './game'
require './player'


puts "<==== NEW GAME =====>"

# make new players (1 and 2)
player1 = Player.new(1)
player2 = Player.new(2)

# initialize new game with starting player
game = Game.new(player1.id)

# continue asking questions until one player has no lives left 
while player1.lives > 0 && player2.lives > 0
  puts "----- NEW TURN -----"
  puts "Player #{game.current_id}: #{game.question}"
  print "> "
  answer = $stdin.gets.chomp.to_i
  if answer == game.current_answer
    puts "YES! You are correct."
    puts "Player1: #{player1.lives}/3  vs  Player2: #{player2.lives}/3"
    game.switch_turn
  else
    case game.current_id
    when 1
      player1.lose_life
    when 2
      player2.lose_life
    end
    puts "Seriously? No!"
    puts "Player1: #{player1.lives}/3  vs  Player2: #{player2.lives}/3"
    game.switch_turn
  end
end

# outside loop, announce winner & points
puts "----- GAME OVER -----"
case game.current_id
when 1
  puts "Player 1 wins with a score of #{player1.lives}/3"
when 2
  puts "Player 2 wins with a score of #{player2.lives}/3"
end
puts "<=============>"
