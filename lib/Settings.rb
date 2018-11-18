class Settings
    def constructor
        @playersAdded=Array.new(4)
        @numberPlayers=0
    end
    def addPlayer(name)
        @playersAdded[@numberPlayers]=Player.new
        @playersAdded[@numberPlayers].constructor(name,"red","A")
        @numberPlayers+=1
    end
end