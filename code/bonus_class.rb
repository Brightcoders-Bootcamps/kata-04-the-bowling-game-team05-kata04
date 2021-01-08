# frozen_string_literal: true

# Class to check if the actual shot is strike and spare
class Bonus
  def initialize(scoreboard)
    @total_score = 0
    @scoreboard = scoreboard
  end

  def check_bonus(frame, first_shoot, second_shoot)
    bonus_roll if frame == 9 && first_shoot + second_shoot == 10

    return @total_score += strike(frame) if first_shoot == 10 && frame < 9

    return @total_score += spare(frame) if first_shoot + second_shoot == 10 && frame < 9

    @total_score += first_shoot + second_shoot
  end

  def strike(frame)
    # takes data from the near next postion of array and takes value of first and second shot
    t1 = @scoreboard[frame + 1][0]
    t2 = @scoreboard[frame + 1][1]
    10 + t1 + t2
  end

  def spare(frame)
    # takes data from near next position of array and takes value of first shot
    t1 = @scoreboard[frame + 1][0]
    10 + t1
  end

  def bonus_roll
    @scoreboard << rand(11)
    puts "Bonus roll: #{@scoreboard[10]}"
    @total_score += @scoreboard[10]
  end
end
