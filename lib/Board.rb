require "./lib/Box"
require "./lib/Player"
require "./lib/Line"
class Board
    def constructor(numberOfPlayers,settings)
        @width=0
        @height=0
        @players=settings.getPlayersAdded
        @player=@players[0].getCharacter
        @playerColor=@players[0].getColor
        @numberOfPlayers=numberOfPlayers
    end

    def setTurn(newTurn)
        @player=newTurn
    end
    def resetScore
        for index in(0..(@numberOfPlayers-1))
            @players[index].restartScoreToZero
        end
    end

    def getScoreOf(pos)
        return @players[pos-1].getScore
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
    def calculteScore
        for row in(0..(@height-1))
            for col in(0..(@width-1))

                colorPlayer1=@players[0].getColor
                colorPlayer2=@players[1].getColor

                if(@numberOfPlayers==3)
                    colorPlayer3=@players[2].getColor
                end
                if(@numberOfPlayers==4)
                    colorPlayer3=@players[2].getColor
                    colorPlayer4=@players[3].getColor
                end
                if(@boxes[row][col].getContent==colorPlayer1 && @boxes[row][col].getSecoreAdded==false)
                    @players[0].increaseScore
                    @boxes[row][col].scoreAddedToPlayer
                    case @numberOfPlayers
                    when 2
                        @player="B"#colocamos otra vez B para que el 2do jugador(A) tenga otro turno
                        @playerColor=@players[1].getColor
                    when 3
                        @player="C"
                        @playerColor=@players[2].getColor
                    when 4
                        @player="D"
                        @playerColor=@players[3].getColor
                    end

                    
                end
                if(@boxes[row][col].getContent==colorPlayer2 && @boxes[row][col].getSecoreAdded==false)
                    @players[1].increaseScore
                    @boxes[row][col].scoreAddedToPlayer
                    @player="A"
                    @playerColor=@players[0].getColor
                end

                if(@numberOfPlayers==3)
                    if(@boxes[row][col].getContent==colorPlayer3 && @boxes[row][col].getSecoreAdded==false)
                        @players[2].increaseScore
                        @boxes[row][col].scoreAddedToPlayer
                        @player="B"
                        @playerColor=@players[1].getColor
                    end
                end
                if(@numberOfPlayers==4)
                    if(@boxes[row][col].getContent==colorPlayer3 && @boxes[row][col].getSecoreAdded==false)
                        @players[2].increaseScore
                        @boxes[row][col].scoreAddedToPlayer
                        @player="B"
                        @playerColor=@players[1].getColor
                    end
                    if(@boxes[row][col].getContent==colorPlayer4 && @boxes[row][col].getSecoreAdded==false)
                        @players[3].increaseScore
                        @boxes[row][col].scoreAddedToPlayer
                        @player="C"
                        @playerColor=@players[2].getColor
                    end
                end
                
            end
        end
    end
end