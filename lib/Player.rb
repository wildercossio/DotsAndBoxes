 class Player
    def constructor(name,color,character,score)
        @name=name
        @color=color
        @character=character
        @score=score
    end
    
    def getName
        return @name
    end
    def getColor
        return @color
    end
    def getCharacter
        return @character
    end
    def getScore
        return @score
    end
    def increaseScore
        @score+=1
    end    

    def restartScoreToZero
        @score=0
    end
end