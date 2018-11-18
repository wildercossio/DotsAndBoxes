class Box
    def constructor(top,left,right,bottom)
        @topLine=Line.new
        @topLine.constructor(top)

        @leftLine=Line.new
        @leftLine.constructor(left)

        @rightLine=Line.new
        @rightLine.constructor(right)

        @bottomLine=Line.new
        @bottomLine.constructor(bottom)
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
    def isHere(value)
        top=getIdTopLine
        left=getIdLeftLine
        right=getIdRightLine
        bottom=getIdBottomLine

        answer=false
        case value
        when top
            answer=true
        when left
            answer=true
        when right
            answer=true
        when bottom
            answer=true
        end
        return answer
    end
    
end