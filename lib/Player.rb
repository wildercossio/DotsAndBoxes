 class Player
    def constructor(name,color,character)
        @name=name
        @color=color
        @character=character
        @score=0
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

    def increaseScore
        @score+=1
    end

    def getScore
        return @score
    end

    def restartScoreToZero
        @score=0
    end
end