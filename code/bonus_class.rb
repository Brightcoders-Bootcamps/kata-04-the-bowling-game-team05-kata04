
class Bonus
    def initialize()
        @score=[[10,0],[5,3]] #temporal array until the good one is here

    end
    
    def checkBonus(index)

        

    end

    def strike(index)
        #takes data from the near next postion of array and takes value of first and second shot
        t1=@score[index+1][0]
        t2=@score[index+1][1]
        total=10+t1+t2
        
    end

    def spare(index)
        #takes data from near next position of array and takes value of first shot
        t1=@score[index+1][0]
        total2=10+t1
    end


end



