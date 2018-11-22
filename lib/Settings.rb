class Settings
    def constructor
        @playersAdded=Array.new
        #@colors=["background:#54ba9b;","background:#ff637d;","background:#5473ba;","background:#ba54a6;"]
                 #[verde,rojo,azul,lila]
        
        #@characters=["A","B","C","D"]
                    #[jugador1,jugador2,jugador3,jugador4]
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