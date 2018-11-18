class Settings
    def constructor
        @playersAdded=Array.new(4)
        @numberPlayers=0
        @colors=["background:#54ba9b;","background:#ff637d;","background:#5473ba;","background:#ba54a6;"]
        @characters=["A","B","C","D"]
    end
    def addPlayer(name)
        color=@colors[@numberPlayers]
        character=@characters[@numberPlayers]
        @playersAdded[@numberPlayers]=Player.new
        @playersAdded[@numberPlayers].constructor(name,color,character)
        @numberPlayers+=1
    end
    
end