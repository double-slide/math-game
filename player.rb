class Player

  attr_accessor :id, :lives

  def initialize(player_id)
    @id = player_id
    @lives = 3
    puts "Player #{@id} initialized..."
  end

  def lose_life
    @lives -= 1
  end

end
