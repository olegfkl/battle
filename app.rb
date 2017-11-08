require 'sinatra/base'

class Battle < Sinatra::Base
configure do
  enable :sessions
end
  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    @p2health = "100HP"
    erb(:play)
  end

run! if app_file == $0
end
# #
