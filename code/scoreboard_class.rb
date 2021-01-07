

class Scoreboard
    attr_accessor :scores
    
    def initialize()
        @scores = Array.new(10) { Array.new(2)} # create the array
    end

    def printdata(v,t1,t2)
        res=t1+t2
        puts"|__#{v+1}__|\n"
        print"|#{t1}|_#{t2} |\n"
        print"|  #{res}  |\n\n"
    
    end

    def data_loop()
        t1=1
        t2=2
        for frame in(0..9)
            for roll in(0..1)
                t1 = @scores[frame][roll]if roll=0
                t2 = @scores[frame][roll]if roll=1
            end
            
            printdata(frame,t1,t2) 
        end
    end
    
end