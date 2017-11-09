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
    # $player1 = Player.new(params[:player1])
    # $player2 = Player.new(params[:player2])
    $game = Game.new(Player.new(params[:player1]),Player.new(params[:player2]))
    # Example with sessions
    # session[:player1] = params[:player1]
    # session[:player2] = params[:player2]
    redirect '/play'
  end

  get '/play' do
    @player1 = $game.player1
    @player2 = $game.player2
    erb(:play)
  end

  post '/attacked_player_2' do
    @player1 = $game.player1
    @player2 = $game.player2
    $game.attack(@player2)
    redirect '/play'
  end

run! if app_file == $0
end
# #
