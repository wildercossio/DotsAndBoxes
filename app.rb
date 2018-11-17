require 'sinatra'
require './lib/Player'


class App < Sinatra::Base
    $numberPlayers=0
    get "/" do
        erb :bienvenida
    end

    get "/principal" do
        erb :principal
    end
    
    get "/ajustes" do
        erb :ajustes
    end

    post "/aniadirJugador" do
       
        $numberPlayers+=1
        @player=Player.new
        @player.add(params[:nombre],"background:#54ba9b;","X")
        erb :ajustes
    end
    run! if app_file == $0
end