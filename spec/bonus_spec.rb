# frozen_string_literal: true

require 'rspec'
require_relative '../code/bonus_class'

RSpec.describe Bonus do
    before do
        @scoreboard = [[4,5],[5,5],[5,3],[10,0],[2,2],[4,5],[5,4],[4,4],[3,2],[5,5]]
        @bonus = Bonus.new(@scoreboard)
    end

    describe '.checkBonus' do
        it 'apply the rule in the array' do
           expect(@bonus.checkBonus(0,4,5)).to eq(9)
        end
        it 'apply the spare rule in the array' do
            expect(@bonus.checkBonus(1,5,5)).to eq(15)
        end
        it 'apply the strike rule in the array' do 
            expect(@bonus.checkBonus(3,10,0)).to eq(14)
        end
        before do
            @scoreboard[10] = 5
           
        end
        it 'apply the bonus rule in the array' do 
            expect(@bonus.checkBonus(9,5,5)).to eq(25)
        end
    end
    
end