require_relative 'game_class.rb'

juego = Game.new("Alberto")
juego.roll_dice()
juego.scoreboard.data_loop()
