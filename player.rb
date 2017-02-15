module MathGame
  class Player
    # STORE CURREJT PLAYER AND PLAYER POINTS AND PLAYER LIVES
    attr_accessor :lives, :points, :name
    def initialize(name)
      @name     = name
      @lives    = 3
      @points   = 0
    end
  end
end
