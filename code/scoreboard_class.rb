require_relative 'bonus_class.rb'

class Scoreboard
    attr_accessor :scores
    
    def initialize()
        @scores = Array.new(10) { Array.new(2)} # create array
        @bonus = Bonus.new(@scores)
       
    end 

    def printdata(frame,t1,t2)
        total_score=@bonus.checkBonus(frame,t1,t2) 
        puts"|__#{frame+1}___|\n"
        print"|#{t1} | #{t2} |\n"
        print"|  #{total_score}  |\n\n"
    end

    def data_loop()
        for frame in(0..9)
            for roll in(0..1)
                t1 = @scores[frame][roll]if roll==0
                t2 = @scores[frame][roll]if roll==1
            end
            printdata(frame,t1,t2) 
        end
    end

    
end