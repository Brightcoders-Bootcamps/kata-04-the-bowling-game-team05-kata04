require_relative 'player_class'
require_relative 'scoreboard_class.rb'

class BowlingGame
    
    def initialize(playerName)
        @player = Player.new(playerName)
        @score = 0
        @Scoreboard = Scoreboard.new
    end

    def roll_dice
        for rolls in(0..9)
            for roll in(0..1)
                @scores[rolls][roll] << @player.roll(11) if roll == 0
                @scores[rolls][roll] << @player.roll(10-@scores[rolls][roll]) if roll == 1
            end 
        end
    end
    


    
end