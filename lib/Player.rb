 class Player
    def add(name,color,character)
        @name=name
        @color=color
        @character=character
        @points=0
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

    def increasePoints
        @points+=1
    end

    def getPoints
        return @points
    end

end