class Board
    def constructor(numberOfPlayers,settings)
        @width=0
        @height=0
        @players=settings.getPlayersAdded
        @player=@players[0].getCharacter
        @playerColor=@players[0].getColor
        @numberOfPlayers=numberOfPlayers
    end
    def getTurn
        return @player
    end

    def getNumberOfPlayers
        return @numberOfPlayers
    end

    def getWidth
        return @width
    end
    def getHeight
        return @height
    end
    def generateBoard(width,height)
        #tamaño del tablero
        @width=width
        @height=height
        @boxes=Array.new(@height){Array.new(@width)}
        #valores de la lineas 
        top=1
        left=@width+1
        right=left+1
        bottom=right+@width

        for row in(0..(@height-1))
            for col in(0..(@width-1))
                @boxes[row][col]=Box.new
                @boxes[row][col].constructor(top,left,right,bottom)
                top=top+1
                left=left+1
                right=right+1
                bottom=bottom+1
            end
            top=bottom-@width
            left=top+@width
            right=left+1
            bottom=right+@width
        end
    end

    def getLine(value)
        for row in(0..(@height-1))
            for col in(0..(@width-1))
                if(@boxes[row][col].isHere(value)==true)
                    return @boxes[row][col].getLine(value)
                end
            end
        end
        return "doesNotExist"
    end

    def checkLine(value)
        for row in(0..(@height-1))
            for col in(0..(@width-1))
                if(@boxes[row][col].isHere(value)==true)
                    @boxes[row][col].checkLine(value,@player)
                end
            end
        end
    end
    def turnOf
        case @numberOfPlayers
        when 2
            playWith2players
        when 3
            playWith3players
        when 4
            playWith4players
        end
    end
    def playWith2players
        case @player
        when "A"
            @player="B"
            @playerColor=@players[1].getColor
        when "B"
            @player="A"
            @playerColor=@players[0].getColor
        end
    end
    def playWith3players
        case @player
        when "A"
            @player="B"
            @playerColor=@players[1].getColor
        when "B"
            @player="C"
            @playerColor=@players[2].getColor 
        when "C"
            @player="A"
            @playerColor=@players[0].getColor 
        end  
    end
    def playWith4players
        case @player
        when "A"
            @player="B"
            @playerColor=@players[1].getColor
        when "B"
            @player="C"
            @playerColor=@players[2].getColor 
        when "C"
            @player="D"
            @playerColor=@players[3].getColor
        when "D"
            @player="A"
            @playerColor=@players[0].getColor  
        end 
    end

    def getContent(row,col)
        return @boxes[row][col].getContent
    end

    def paintBoxes        
        for row in(0..(@height-1))
            for col in(0..(@width-1))
                @boxes[row][col].paintBox(@playerColor)
            end
        end
    end
end