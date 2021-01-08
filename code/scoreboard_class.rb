require_relative 'bonus_class'
# frozen_string_literal: true
# scan array and print's it
class Scoreboard
  attr_accessor :scores

  def initialize
    @scores = Array.new(10) { Array.new(2) } # create array
    @bonus = Bonus.new(@scores)
  end

  def printdata(frame, first_shot, second_shot)
    total_score = @bonus.check_bonus(frame, first_shot, second_shot)
    puts "|__#{frame + 1}___|\n"
    print "|#{first_shot} | #{second_shot} |\n"
    print "|  #{total_score}  |\n\n"
  end

  def data_loop
    for frame in(0..9)
      for roll in(0..1)
        first_shot = @scores[frame][roll] if roll.zero?
        second_shot = @scores[frame][roll] if roll == 1
      end
      printdata(frame, first_shot, second_shot)
    end
  end
end