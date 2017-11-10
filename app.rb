require './lib/game'
require './lib/player'
require 'sinatra/base'

class Battle < Sinatra::Base
configure do
  enable :sessions
end
  get '/' do
    erb(:index)
  end

  post '/names' do
     player1 = Player.new(params[:player1])
     player2 = Player.new(params[:player2])
     Game.new(player1, player2)
     $x = false
    # $game = Game.new(Player.new(params[:player1]),Player.new(params[:player2]))
    # Example with sessions
    # session[:player1] = params[:player1]
    # session[:player2] = params[:player2]
    redirect '/play'
  end

  get '/play' do
    @player1 = Game.instance.player1
    @player2 = Game.instance.player2
    erb(:play)
  end

  get '/attack' do
    @player1 = Game.instance.player1
    @player2 = Game.instance.player2
    Game.instance.switch
    $x = true
    if @player2.health.zero?
      redirect '/champion'
    else
      redirect '/play'
    end
  end

  get '/champion' do
    @player1 = Game.instance.player1
    @player2 = Game.instance.player2
     erb(:champion)
   end


run! if app_file == $0
end
# #
