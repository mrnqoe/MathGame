module MathGame
  class Game
    # RUN THE GAME AND STOP THE GAME
    attr_accessor :gameOn, :turn, :player1, :player2
    def initialize
      puts 'player 1 ?'
      @player1 = MathGame::Player.new(gets.chomp)
      puts 'player 2 ?'
      @player2 = MathGame::Player.new(gets.chomp)
      @players = [@player1, @player2]
    end
  end
end
