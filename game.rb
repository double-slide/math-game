class Game

  attr_accessor :current_id, :current_answer

  def initialize(current_id)
    @current_id = current_id
    @current_answer = 0
    puts "Game initialized..."
  end

  def question 
    n1 = rand(20) + 1
    n2 = rand(20) + 1
    @current_answer = n1 + n2
    "What does #{n1} plus #{n2} equal?"
  end

  def switch_turn
    case @current_id
    when 1
      @current_id = 2
    when 2
      @current_id = 1
    end
  end
end