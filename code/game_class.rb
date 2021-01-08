# frozen_string_literal: true

require_relative 'player_class'
require_relative 'scoreboard_class'
require_relative 'bonus_class'
# frozen_string_literal: true

# Class that fill the score grid
class Game
  attr_accessor :scoreboard

  def initialize(player_name)
    @player = Player.new(player_name)
    @scoreboard = Scoreboard.new
  end

  def roll_dice
    (0..9).each do |frame|
      (0..1).each do |roll|
        @scoreboard.scores[frame][roll] = if roll.zero?
                                            @player.roll(11)
                                          else
                                            @player.roll(11 - @scoreboard.scores[frame][0])
                                          end
      end
    end
  end
  
end