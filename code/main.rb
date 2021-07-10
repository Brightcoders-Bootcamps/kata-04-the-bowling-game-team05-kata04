# frozen_string_literal: true

require_relative 'game_class'

juego = Game.new('Alberto')
juego.roll_dice
juego.scoreboard.data_loop
