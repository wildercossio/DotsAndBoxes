require 'sinatra'
require './lib/Settings'
require './lib/Board'
require './lib/Player'


class App < Sinatra::Base
    #inicializaciones
    $game=Board.new
    $settings=Settings.new
    $settings.constructor
    $players=Array.new
    $tam=0
    $turn=""
    $colors=["background:#54ba9b;","background:#ff637d;","background:#5473ba;","background:#ba54a6;"]
    #[verde,rojo,azul,lila]
    $characters=["A","B","C","D"]
    #------------------------
    get '/' do
        erb :bienvenida
    end
    get '/principal' do
        erb :principal
    end
    get '/deleteAll' do
        $game=Board.new
        $settings=Settings.new
        $settings.constructor
        $tam=0
        $players.clear
        $settings.deleteAllPlayers
        erb :principal
    end
    get '/restartGame' do
        $game.resetScore
        $game.generateBoard(4,4)
        $game.setTurn("A")
        $turn=$game.getTurn
        $value1=$game.getLine(1)
        $value2=$game.getLine(2)
        $value3=$game.getLine(3)
        $value4=$game.getLine(4)
        $value5=$game.getLine(5)
        $value6=$game.getLine(6)
        $value7=$game.getLine(7)
        $value8=$game.getLine(8)
        $value9=$game.getLine(9)
        $value10=$game.getLine(10)
        $value11=$game.getLine(11)
        $value12=$game.getLine(12)
        $value13=$game.getLine(13)
        $value14=$game.getLine(14)
        $value15=$game.getLine(15)
        $value16=$game.getLine(16)
        $value17=$game.getLine(17)
        $value18=$game.getLine(18)
        $value19=$game.getLine(19)
        $value20=$game.getLine(20)
        $value21=$game.getLine(21)
        $value22=$game.getLine(22)
        $value23=$game.getLine(23)
        $value24=$game.getLine(24)
        $value25=$game.getLine(25)
        $value26=$game.getLine(26)
        $value27=$game.getLine(27)
        $value28=$game.getLine(28)
        $value29=$game.getLine(29)
        $value30=$game.getLine(30)
        $value31=$game.getLine(31)
        $value32=$game.getLine(32)
        $value33=$game.getLine(33)
        $value34=$game.getLine(34)
        $value35=$game.getLine(35)
        $value36=$game.getLine(36)
        $value37=$game.getLine(37)
        $value38=$game.getLine(38)
        $value39=$game.getLine(39)
        $value40=$game.getLine(40)
        
        
        $content1=$game.getContent(0,0)
        $content2=$game.getContent(0,1)
        $content3=$game.getContent(0,2)
        $content4=$game.getContent(0,3)
        $content5=$game.getContent(1,0)
        $content6=$game.getContent(1,1)
        $content7=$game.getContent(1,2)
        $content8=$game.getContent(1,3)
        $content9=$game.getContent(2,0)
        $content10=$game.getContent(2,1)
        $content11=$game.getContent(2,2)
        $content12=$game.getContent(2,3)
        $content13=$game.getContent(3,0)
        $content14=$game.getContent(3,1)
        $content15=$game.getContent(3,2)
        $content16=$game.getContent(3,3)
        erb :jugarConAmigos
    end

    get '/drawGame' do
        $game.constructor($players.length,$settings)#tamaño del tablero es 3*3 cajas
        $game.generateBoard(4,4)
        $turn=$game.getTurn
        $value1=$game.getLine(1)
        $value2=$game.getLine(2)
        $value3=$game.getLine(3)
        $value4=$game.getLine(4)
        $value5=$game.getLine(5)
        $value6=$game.getLine(6)
        $value7=$game.getLine(7)
        $value8=$game.getLine(8)
        $value9=$game.getLine(9)
        $value10=$game.getLine(10)
        $value11=$game.getLine(11)
        $value12=$game.getLine(12)
        $value13=$game.getLine(13)
        $value14=$game.getLine(14)
        $value15=$game.getLine(15)
        $value16=$game.getLine(16)
        $value17=$game.getLine(17)
        $value18=$game.getLine(18)
        $value19=$game.getLine(19)
        $value20=$game.getLine(20)
        $value21=$game.getLine(21)
        $value22=$game.getLine(22)
        $value23=$game.getLine(23)
        $value24=$game.getLine(24)
        $value25=$game.getLine(25)
        $value26=$game.getLine(26)
        $value27=$game.getLine(27)
        $value28=$game.getLine(28)
        $value29=$game.getLine(29)
        $value30=$game.getLine(30)
        $value31=$game.getLine(31)
        $value32=$game.getLine(32)
        $value33=$game.getLine(33)
        $value34=$game.getLine(34)
        $value35=$game.getLine(35)
        $value36=$game.getLine(36)
        $value37=$game.getLine(37)
        $value38=$game.getLine(38)
        $value39=$game.getLine(39)
        $value40=$game.getLine(40)
        
        
        $content1=$game.getContent(0,0)
        $content2=$game.getContent(0,1)
        $content3=$game.getContent(0,2)
        $content4=$game.getContent(0,3)
        $content5=$game.getContent(1,0)
        $content6=$game.getContent(1,1)
        $content7=$game.getContent(1,2)
        $content8=$game.getContent(1,3)
        $content9=$game.getContent(2,0)
        $content10=$game.getContent(2,1)
        $content11=$game.getContent(2,2)
        $content12=$game.getContent(2,3)
        $content13=$game.getContent(3,0)
        $content14=$game.getContent(3,1)
        $content15=$game.getContent(3,2)
        $content16=$game.getContent(3,3)
        erb :jugarConAmigos
    end

    get '/ajustes' do
        erb :ajustes
    end

    post '/addPlayer' do
        if($tam<4)
            player=Player.new
            score=0
            player.constructor(params[:nombre],$colors[$tam],$characters[$tam],score)
            $settings.addPlayer(player)
            $tam+=1
        end       
        $players=$settings.getPlayersAdded
        erb :ajustes
    end
    post '/check1' do 
        
        $game.checkLine(1)
        $game.paintBoxes
        $game.calculteScore
        $content1=$game.getContent(0,0)
        $game.turnOf
        $turn=$game.getTurn
        $value1=$game.getLine(1)
        erb :jugarConAmigos
    end
    
    post '/check2' do 
        
        $game.checkLine(2)
        $game.paintBoxes
        $game.calculteScore
        $content2=$game.getContent(0,1)
        $game.turnOf
        $turn=$game.getTurn
        $value2=$game.getLine(2)
        erb :jugarConAmigos
    end
    
    post '/check3' do 
        
        $game.checkLine(3)
        $game.paintBoxes
        $game.calculteScore
        $content3=$game.getContent(0,2)
        $game.turnOf
        $turn=$game.getTurn  
        $value3=$game.getLine(3)
        erb :jugarConAmigos
    end
    
    post '/check4' do 
        
        $game.checkLine(4)
        $game.paintBoxes
        $game.calculteScore
        $content4=$game.getContent(0,3)
        $game.turnOf
        $turn=$game.getTurn
        $value4=$game.getLine(4)
        erb :jugarConAmigos
    end
    
    post '/check5' do 
        
        $game.checkLine(5)
        $game.paintBoxes
        $game.calculteScore
        $content1=$game.getContent(0,0)
        $game.turnOf
        $turn=$game.getTurn
        $value5=$game.getLine(5)
        erb :jugarConAmigos
    end
    
    post '/check6' do 
        
        $game.checkLine(6)
        $game.paintBoxes
        $game.calculteScore
        $content1=$game.getContent(0,0)
        $content2=$game.getContent(0,1)
        $game.turnOf
        $turn=$game.getTurn
        $value6=$game.getLine(6)
        erb :jugarConAmigos
    end
    
    post '/check7' do 
        
        $game.checkLine(7)
        $game.paintBoxes
        $game.calculteScore
        $content2=$game.getContent(0,1)
        $content3=$game.getContent(0,2)
        $game.turnOf
        $turn=$game.getTurn
        $value7=$game.getLine(7)
        erb :jugarConAmigos
    end
    
    post '/check8' do 
        
        $game.checkLine(8)
        $game.paintBoxes
        $game.calculteScore
        $content3=$game.getContent(0,2)
        $content4=$game.getContent(0,3)
        $game.turnOf
        $turn=$game.getTurn
        $value8=$game.getLine(8)
        erb :jugarConAmigos
    end
    
    post '/check9' do 
        
        $game.checkLine(9)
        $game.paintBoxes
        $game.calculteScore
        $content4=$game.getContent(0,3)
        $game.turnOf
        $turn=$game.getTurn
        $value9=$game.getLine(9)
        erb :jugarConAmigos
    end
    
    post '/check10' do 
        
        $game.checkLine(10)
        $game.paintBoxes
        $game.calculteScore
        $content1=$game.getContent(0,0)
        $content5=$game.getContent(1,0)
        $game.turnOf
        $turn=$game.getTurn
        $value10=$game.getLine(10)
        erb :jugarConAmigos
    end
    
    post '/check11' do 
        $game.checkLine(11)
        $game.paintBoxes
        $game.calculteScore
        $content2=$game.getContent(0,1)
        $content6=$game.getContent(1,1)
        $game.turnOf
        $turn=$game.getTurn
        $value11=$game.getLine(11)
        erb :jugarConAmigos
    end
    
    post '/check12' do 
        $game.checkLine(12)
        $game.paintBoxes
        $game.calculteScore
        $content3=$game.getContent(0,2)
        $content7=$game.getContent(1,2)
        $game.turnOf
        $turn=$game.getTurn
        $value12=$game.getLine(12)
        erb :jugarConAmigos
    end




    post '/check13' do 
        $game.checkLine(13)
        $game.paintBoxes
        $game.calculteScore
        $content4=$game.getContent(0,3)
        $content8=$game.getContent(1,3)
        $game.turnOf
        $turn=$game.getTurn
        $value13=$game.getLine(13)
        erb :jugarConAmigos
    end

    post '/check14' do 
        $game.checkLine(14)
        $game.paintBoxes
        $game.calculteScore
        $content5=$game.getContent(1,0)
        $game.turnOf
        $turn=$game.getTurn
        $value14=$game.getLine(14)
        erb :jugarConAmigos
    end

    post '/check15' do 
        $game.checkLine(15)
        $game.paintBoxes
        $game.calculteScore
        $content5=$game.getContent(1,0)
        $content6=$game.getContent(1,1)
        $game.turnOf
        $turn=$game.getTurn
        $value15=$game.getLine(15)
        erb :jugarConAmigos
    end

    post '/check16' do 
        $game.checkLine(16)
        $game.paintBoxes
        $game.calculteScore
        $content6=$game.getContent(1,1)
        $content7=$game.getContent(1,2)
        $game.turnOf
        $turn=$game.getTurn
        $value16=$game.getLine(16)
        erb :jugarConAmigos
    end

    post '/check17' do 
        $game.checkLine(17)
        $game.paintBoxes
        $game.calculteScore
        $content7=$game.getContent(1,2)
        $content8=$game.getContent(1,3)
        $game.turnOf
        $turn=$game.getTurn
        $value17=$game.getLine(17)
        erb :jugarConAmigos
    end

    post '/check18' do 
        $game.checkLine(18)
        $game.paintBoxes
        $game.calculteScore
        $content8=$game.getContent(1,3)
        $game.turnOf
        $turn=$game.getTurn
        $value18=$game.getLine(18)
        erb :jugarConAmigos
    end

    post '/check19' do 
        $game.checkLine(19)
        $game.paintBoxes
        $game.calculteScore
        $content5=$game.getContent(1,0)
        $content9=$game.getContent(2,0)
        $game.turnOf
        $turn=$game.getTurn
        $value19=$game.getLine(19)
        erb :jugarConAmigos
    end

    post '/check20' do 
        $game.checkLine(20)
        $game.paintBoxes
        $game.calculteScore
        $content6=$game.getContent(1,1)
        $content10=$game.getContent(2,1)
        $game.turnOf
        $turn=$game.getTurn
        $value20=$game.getLine(20)
        erb :jugarConAmigos
    end

    post '/check21' do 
        $game.checkLine(21)
        $game.paintBoxes
        $game.calculteScore
        $content7=$game.getContent(1,2)
        $content11=$game.getContent(2,2)
        $game.turnOf
        $turn=$game.getTurn
        $value21=$game.getLine(21)
        erb :jugarConAmigos
    end

    post '/check22' do 
        $game.checkLine(22)
        $game.paintBoxes
        $game.calculteScore
        $content8=$game.getContent(1,3)
        $content12=$game.getContent(2,3)
        $game.turnOf
        $turn=$game.getTurn
        $value22=$game.getLine(22)
        erb :jugarConAmigos
    end

    post '/check23' do 
        $game.checkLine(23)
        $game.paintBoxes
        $game.calculteScore
        $content9=$game.getContent(2,0)
        $game.turnOf
        $turn=$game.getTurn
        $value23=$game.getLine(23)
        erb :jugarConAmigos
    end

    post '/check24' do 
        $game.checkLine(24)
        $game.paintBoxes
        $game.calculteScore
        $content9=$game.getContent(2,0)
        $content10=$game.getContent(2,1)
        $game.turnOf
        $turn=$game.getTurn
        $value24=$game.getLine(24)
        erb :jugarConAmigos
    end

    post '/check25' do 
        $game.checkLine(25)
        $game.paintBoxes
        $game.calculteScore
        $content10=$game.getContent(2,1)
        $content11=$game.getContent(2,2)
        $game.turnOf
        $turn=$game.getTurn
        $value25=$game.getLine(25)
        erb :jugarConAmigos
    end

    post '/check26' do 
        $game.checkLine(26)
        $game.paintBoxes
        $game.calculteScore
        $content11=$game.getContent(2,2)
        $content12=$game.getContent(2,3)
        $game.turnOf
        $turn=$game.getTurn
        $value26=$game.getLine(26)
        erb :jugarConAmigos
    end

    post '/check27' do 
        $game.checkLine(27)
        $game.paintBoxes
        $game.calculteScore
        $content12=$game.getContent(2,3)
        $game.turnOf
        $turn=$game.getTurn
        $value27=$game.getLine(27)
        erb :jugarConAmigos
    end

    post '/check28' do 
        $game.checkLine(28)
        $game.paintBoxes
        $game.calculteScore
        $content9=$game.getContent(2,0)
        $content13=$game.getContent(3,0)
        $game.turnOf
        $turn=$game.getTurn
        $value28=$game.getLine(28)
        erb :jugarConAmigos
    end

    post '/check29' do 
        $game.checkLine(29)
        $game.paintBoxes
        $game.calculteScore
        $content10=$game.getContent(2,1)
        $content14=$game.getContent(3,1)
        $game.turnOf
        $turn=$game.getTurn
        $value29=$game.getLine(29)
        erb :jugarConAmigos
    end

    post '/check30' do 
        $game.checkLine(30)
        $game.paintBoxes
        $game.calculteScore
        $content11=$game.getContent(2,2)
        $content15=$game.getContent(3,2)
        $game.turnOf
        $turn=$game.getTurn
        $value30=$game.getLine(30)
        erb :jugarConAmigos
    end

    post '/check31' do 
        $game.checkLine(31)
        $game.paintBoxes
        $game.calculteScore
        $content12=$game.getContent(2,3)
        $content16=$game.getContent(3,3)
        $game.turnOf
        $turn=$game.getTurn
        $value31=$game.getLine(31)
        erb :jugarConAmigos
    end
    post '/check32' do 
        $game.checkLine(32)
        $game.paintBoxes
        $game.calculteScore
        $content13=$game.getContent(3,0)
        $game.turnOf
        $turn=$game.getTurn
        $value32=$game.getLine(32)
        erb :jugarConAmigos
    end
    post '/check33' do 
        $game.checkLine(33)
        $game.paintBoxes
        $game.calculteScore
        $content13=$game.getContent(3,0)
        $content14=$game.getContent(3,1)
        $game.turnOf
        $turn=$game.getTurn
        $value33=$game.getLine(33)
        erb :jugarConAmigos
    end
    post '/check34' do 
        $game.checkLine(34)
        $game.paintBoxes
        $game.calculteScore
        $content14=$game.getContent(3,1)
        $content15=$game.getContent(3,2)
        $game.turnOf
        $turn=$game.getTurn
        $value34=$game.getLine(34)
        erb :jugarConAmigos
    end
    post '/check35' do 
        $game.checkLine(35)
        $game.paintBoxes
        $game.calculteScore
        $content15=$game.getContent(3,2)
        $content16=$game.getContent(3,3)
        $game.turnOf
        $turn=$game.getTurn
        $value35=$game.getLine(35)
        erb :jugarConAmigos
    end
    post '/check36' do 
        $game.checkLine(36)
        $game.paintBoxes
        $game.calculteScore
        $content16=$game.getContent(3,3)
        $game.turnOf
        $turn=$game.getTurn
        $value36=$game.getLine(36)
        erb :jugarConAmigos
    end
    post '/check37' do 
        $game.checkLine(37)
        $game.paintBoxes
        $game.calculteScore
        $content13=$game.getContent(3,0)
        $game.turnOf
        $turn=$game.getTurn
        $value37=$game.getLine(37)
        erb :jugarConAmigos
    end
    post '/check38' do 
        $game.checkLine(38)
        $game.paintBoxes
        $game.calculteScore
        $content14=$game.getContent(3,1)
        $game.turnOf
        $turn=$game.getTurn
        $value38=$game.getLine(38)
        erb :jugarConAmigos
    end
    post '/check39' do 
        $game.checkLine(39)
        $game.paintBoxes
        $game.calculteScore
        $content15=$game.getContent(3,2)
        $game.turnOf
        $turn=$game.getTurn
        $value39=$game.getLine(39)
        erb :jugarConAmigos
    end
    post '/check40' do 
        $game.checkLine(40)
        $game.paintBoxes
        $game.calculteScore
        $content16=$game.getContent(3,3)
        $game.turnOf
        $turn=$game.getTurn
        $value40=$game.getLine(40)
        erb :jugarConAmigos
    end
    run! if app_file == $0
end






