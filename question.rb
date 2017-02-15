module MathGame
  class Question
    # ASK QUEST!ON AND KEEP COMPARE ANSWERS
    def initialize
      @number1  = Random.rand(1..20)
      @number2  = Random.rand(1..20)
      @answer   = @number1 + @number2
      puts "What does #{@number1} + #{@number2} sum up to ?"
    end
    def evalutateAsw(player, player_answer)
      player_answer == @answer ? true : false
    end
  end
end
