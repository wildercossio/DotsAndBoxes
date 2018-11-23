class Box
    def constructor(top,left,right,bottom,content,numberCheckLines,boxChecked)
        @topLine=Line.new
        @topLine.constructor(top)

        @leftLine=Line.new
        @leftLine.constructor(left)

        @rightLine=Line.new
        @rightLine.constructor(right)

        @bottomLine=Line.new
        @bottomLine.constructor(bottom)

        @content=content
        @numberCheckLines=numberCheckLines
        @boxChecked=boxChecked
    end
    def boxChecked
        @boxChecked=true
    end
    def getBoxChecked
        return @boxChecked
    end

    def getValueTopLine
        return @topLine.getValue
    end
    def getValueLeftLine
        return @leftLine.getValue
    end
    def getValueRightLine
        return @rightLine.getValue
    end
    def getValueBottomLine
        return @bottomLine.getValue
    end

    def getIdTopLine
        return @topLine.getId
    end
    def getIdLeftLine
        return @leftLine.getId
    end
    def getIdRightLine
        return @rightLine.getId
    end
    def getIdBottomLine
        return @bottomLine.getId
    end
    
    def getContent
        return @content
    end
    def setContent(newContent)
        @content=newContent
    end
    
    def getLine(value)
        top=getIdTopLine
        left=getIdLeftLine
        right=getIdRightLine
        bottom=getIdBottomLine
        case value
        when top
            getValueTopLine
        when left
            getValueLeftLine
        when right
            getValueRightLine
        when bottom
            getValueBottomLine
        else
            "not here"
        end
        
    end

    def getNumberCheckLines
        return @numberCheckLines
    end

    def increaseNumberCheckLines
        @numberCheckLines+=1
    end
    def checkLine(value,characterPlayer)
        top=getIdTopLine
        left=getIdLeftLine
        right=getIdRightLine
        bottom=getIdBottomLine
        case value
        when top
            @topLine.setValue(characterPlayer)
            increaseNumberCheckLines
        when left
            @leftLine.setValue(characterPlayer)
            increaseNumberCheckLines            
        when right
            @rightLine.setValue(characterPlayer)
            increaseNumberCheckLines            
        when bottom
            @bottomLine.setValue(characterPlayer)
            increaseNumberCheckLines
        end
    end
    def paintBox(colorPlayer)
        if(@numberCheckLines==4)
            @content=colorPlayer
            increaseNumberCheckLines
        end
    end
end