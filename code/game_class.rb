require_relative 'player_class'
require_relative 'scoreboard_class.rb'
require_relative 'bonus_class.rb'

class Game
    attr_accessor :scoreboard                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
    
    def initialize(playerName)
        @player = Player.new(playerName) 
        @scoreboard = Scoreboard.new
    end

    def roll_dice
        for frame in(0..9)
            for roll in(0..1)
                roll == 0 ? @scoreboard.scores[frame][roll] = @player.roll(11) : @scoreboard.scores[frame][roll] = @player.roll(11 - @scoreboard.scores[frame][0]) 
           
            end
        end
    end
end

