class Settings
    def constructor
        @playersAdded=Array.new
    end
    def addPlayer(player)
        @playersAdded.push(player) 
    end
    def isListEmpty
        @playersAdded.empty?
    end
    def getNumberPlayers
        return @playersAdded.length
    end
    def getPlayersAdded
        return @playersAdded
    end
    def compare(player1,player2)
        return player1.getName==player2.getName && player1.getColor==player2.getColor && player1.getScore==player2.getScore && player1.getCharacter==player2.getCharacter
    end
    def deleteAllPlayers
        @playersAdded.clear
    end
end