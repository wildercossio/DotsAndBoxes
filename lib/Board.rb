class Board
    def constructor
        @width=0
        @height=0
        @characterPlayer="A"
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
                    @boxes[row][col].checkLine(value,@characterPlayer)
                end
            end
        end
    end
end