# frozen_string_literal: true

require 'rspec'
require_relative '../code/player_class'

RSpec.describe Player do
    before do
        @player = Player.new('Nayeli')
    end

    describe '.roll' do
        it 'return the number rest pins' do
            expect(@player.roll(8)).to be_between(0,7)
        end
    end
end