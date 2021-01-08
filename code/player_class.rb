# frozen_string_literal: true

# Give values to every shot
class Player
  def initialize(name)
    @name = name
  end

  def roll(pins_remaining)
    rand(pins_remaining)
  end
end
