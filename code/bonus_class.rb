
class Bonus
    def initialize()
        @score=[[10,0],[5,3]] #temporal array until the good one is here
        printdata()

    end
    
    def setBonus(roll1, roll2)
        return roll1 if roll1 + roll2 == 10
        return roll1 + roll2 if rol1 == 10
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

    def printdata()
        #prototype of scoreboard
        v1=1 #lap 
        t1=10 #first shot
        t2=10 #second shot
        res=20 #result
        print"|___#{v1}__|\n"
        print"|#{t1}|_#{t2}|\n"
        print"|  #{res}  |\n"
    end

    def test()
        first_test=strike(0)
        second_test=spare(0)
        puts first_test
        puts second_test
    end
end
Bonus.new


