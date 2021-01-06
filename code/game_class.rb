require_relative 'player_class'
require_relative 'scoreboard_class.rb'

class BowlingGame
    
    def initialize(playerName)
        @player = Player.new(playerName)
        @score = 0
    end


    
end