require 'sinatra'
require './lib/Settings'
require './lib/Board'
require './lib/Player'


class App < Sinatra::Base
    $game=Board.new
    $settings=Settings.new
    $settings.constructor
    $players=Array.new
    $numberPlayers=0
    $turn=""
    get '/' do
        erb :bienvenida
    end
    get '/principal' do
        erb :principal
    end
    get '/jugarConAmigos' do
        $game.constructor($numberPlayers,$settings)#tamaño del tablero es 3*3 cajas
        $game.generateBoard(3,3)
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
        
        
        $content1=$game.getContent(0,0)
        $content2=$game.getContent(0,1)
        $content3=$game.getContent(0,2)
        $content4=$game.getContent(1,0)
        $content5=$game.getContent(1,1)
        $content6=$game.getContent(1,2)
        $content7=$game.getContent(2,0)
        $content8=$game.getContent(2,1)
        $content9=$game.getContent(2,2)
        erb :jugarConAmigos
    end

    get '/ajustes' do
        erb :ajustes
    end

    post '/addPlayer' do
        if($numberPlayers<4)
            $numberPlayers+=1
            $settings.addPlayer(params[:nombre])
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
        $content1=$game.getContent(0,0)
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
        $content2=$game.getContent(0,1)
        $game.turnOf
        $turn=$game.getTurn
        $value5=$game.getLine(5)
        erb :jugarConAmigos
    end
    
    post '/check6' do 
        
        $game.checkLine(6)
        $game.paintBoxes
        $game.calculteScore
        $content2=$game.getContent(0,1)
        $content3=$game.getContent(0,2)
        $game.turnOf
        $turn=$game.getTurn
        $value6=$game.getLine(6)
        erb :jugarConAmigos
    end
    
    post '/check7' do 
        
        $game.checkLine(7)
        $game.paintBoxes
        $game.calculteScore
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
        $content1=$game.getContent(0,0)
        $content4=$game.getContent(1,0)
        $game.turnOf
        $turn=$game.getTurn
        $value8=$game.getLine(8)
        erb :jugarConAmigos
    end
    
    post '/check9' do 
        
        $game.checkLine(9)
        $game.paintBoxes
        $game.calculteScore
        $content2=$game.getContent(0,1)
        $content5=$game.getContent(1,1)
        $game.turnOf
        $turn=$game.getTurn
        $value9=$game.getLine(9)
        erb :jugarConAmigos
    end
    
    post '/check10' do 
        
        $game.checkLine(10)
        $game.paintBoxes
        $game.calculteScore
        $content3=$game.getContent(0,2)
        $content6=$game.getContent(1,2)
        $game.turnOf
        $turn=$game.getTurn
        $value10=$game.getLine(10)
        erb :jugarConAmigos
    end
    
    post '/check11' do 
        $game.checkLine(11)
        $game.paintBoxes
        $game.calculteScore
        $content4=$game.getContent(1,0)
        $game.turnOf
        $turn=$game.getTurn
        $value11=$game.getLine(11)
        erb :jugarConAmigos
    end
    
    post '/check12' do 
        $game.checkLine(12)
        $game.paintBoxes
        $game.calculteScore
        $content4=$game.getContent(1,0)
        $content5=$game.getContent(1,1)
        $game.turnOf
        $turn=$game.getTurn
        $value12=$game.getLine(12)
        erb :jugarConAmigos
    end




    post '/check13' do 
        $game.checkLine(13)
        $game.paintBoxes
        $game.calculteScore
        $content5=$game.getContent(1,1)
        $content6=$game.getContent(1,2)
        $game.turnOf
        $turn=$game.getTurn
        $value13=$game.getLine(13)
        erb :jugarConAmigos
    end

    post '/check14' do 
        $game.checkLine(14)
        $game.paintBoxes
        $game.calculteScore
        $content6=$game.getContent(1,2)
        $game.turnOf
        $turn=$game.getTurn
        $value14=$game.getLine(14)
        erb :jugarConAmigos
    end

    post '/check15' do 
        $game.checkLine(15)
        $game.paintBoxes
        $game.calculteScore
        $content4=$game.getContent(1,0)
        $content7=$game.getContent(2,0)
        $game.turnOf
        $turn=$game.getTurn
        $value15=$game.getLine(15)
        erb :jugarConAmigos
    end

    post '/check16' do 
        $game.checkLine(16)
        $game.paintBoxes
        $game.calculteScore
        $content5=$game.getContent(1,1)
        $content8=$game.getContent(2,1)
        $game.turnOf
        $turn=$game.getTurn
        $value16=$game.getLine(16)
        erb :jugarConAmigos
    end

    post '/check17' do 
        $game.checkLine(17)
        $game.paintBoxes
        $game.calculteScore
        $content6=$game.getContent(1,2)
        $content9=$game.getContent(2,2)
        $game.turnOf
        $turn=$game.getTurn
        $value17=$game.getLine(17)
        erb :jugarConAmigos
    end

    post '/check18' do 
        $game.checkLine(18)
        $game.paintBoxes
        $game.calculteScore
        $content7=$game.getContent(2,0)
        $game.turnOf
        $turn=$game.getTurn
        $value18=$game.getLine(18)
        erb :jugarConAmigos
    end

    post '/check19' do 
        $game.checkLine(19)
        $game.paintBoxes
        $game.calculteScore
        $content7=$game.getContent(2,0)
        $content8=$game.getContent(2,1)
        $game.turnOf
        $turn=$game.getTurn
        $value19=$game.getLine(19)
        erb :jugarConAmigos
    end

    post '/check20' do 
        $game.checkLine(20)
        $game.paintBoxes
        $game.calculteScore
        $content8=$game.getContent(2,1)
        $content9=$game.getContent(2,2)
        $game.turnOf
        $turn=$game.getTurn
        $value20=$game.getLine(20)
        erb :jugarConAmigos
    end

    post '/check21' do 
        $game.checkLine(21)
        $game.paintBoxes
        $game.calculteScore
        $content9=$game.getContent(2,2)
        $game.turnOf
        $turn=$game.getTurn
        $value21=$game.getLine(21)
        erb :jugarConAmigos
    end

    post '/check22' do 
        $game.checkLine(22)
        $game.paintBoxes
        $game.calculteScore
        $content7=$game.getContent(2,0)
        $game.turnOf
        $turn=$game.getTurn
        $value22=$game.getLine(22)
        erb :jugarConAmigos
    end

    post '/check23' do 
        $game.checkLine(23)
        $game.paintBoxes
        $game.calculteScore
        $content8=$game.getContent(2,1)
        $game.turnOf
        $turn=$game.getTurn
        $value23=$game.getLine(23)
        erb :jugarConAmigos
    end

    post '/check24' do 
        $game.checkLine(24)
        $game.paintBoxes
        $game.calculteScore
        $content9=$game.getContent(2,2)
        $game.turnOf
        $turn=$game.getTurn
        $value24=$game.getLine(24)
        erb :jugarConAmigos
    end

    run! if app_file == $0
end






