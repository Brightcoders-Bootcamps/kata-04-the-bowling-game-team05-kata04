

class Bonus
    def initialize(scoreboard)
        @total_score=0
        @scoreboard = scoreboard 
    end
    
    def checkBonus(frame,t1,t2) 
        
        if frame == 9 and t1 + t2 == 10
            bonus_roll(frame)
        end
                      
        if t1 == 10 and frame < 9
            return @total_score+=strike(frame)
        end

        if t1+t2 == 10 and frame < 9
            return  @total_score+=spare(frame)
        end

        return  @total_score+=t1+t2
    end

    def strike(frame)
        #takes data from the near next postion of array and takes value of first and second shot
        t1=@scoreboard[frame+1][0]
        t2=@scoreboard[frame+1][1]
        total=10+t1+t2
        
    end

    def spare(frame)
        #takes data from near next position of array and takes value of first shot
        t1=@scoreboard[frame+1][0]
        total2=10+t1
    end

    def bonus_roll(frame)
        @scoreboard << rand(11)
        puts "Bonus roll: #{@scoreboard[10]}"
        return @total_score+=@scoreboard[10]+10
    end


end
