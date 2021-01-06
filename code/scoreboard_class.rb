

class Scoreboard
    attr_accessor :scores
    
    def initialize()
        @scores = Array.new(10) { Array.new(2)}# create the array
    end

    
end