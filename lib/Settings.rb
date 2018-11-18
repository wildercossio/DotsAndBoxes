class Settings
    def constructor
        @playersAdded=Array.new
        @numberPlayers=0
        @colors=["background:#54ba9b;","background:#ff637d;","background:#5473ba;","background:#ba54a6;"]
        @characters=["A","B","C","D"]
    end
    def addPlayer(name)
        color=@colors[@numberPlayers]
        character=@characters[@numberPlayers]
        @playersAdded[@numberPlayers]=Player.new
        @playersAdded[@numberPlayers].constructor(name,color,character)
        increaseNumberPlayers
    end

    def increaseNumberPlayers
        @numberPlayers+=1
    end

    def getNumberPlayers
        return @numberPlayers
    end

    def getPlayersAdded
        return @playersAdded
    end
end