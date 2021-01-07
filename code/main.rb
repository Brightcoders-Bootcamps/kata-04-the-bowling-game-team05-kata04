require_relative 'game_class.rb'

juego = BowlingGame.new("Alberto")
juego.roll_dice()
juego.scoreboard.data_loop()