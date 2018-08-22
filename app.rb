require 'sinatra/base'

class Battle < Sinatra::Base
    enable :sessions

  get '/' do
   erb(:index)
  end

  post '/names' do
    session[:player_1_name] = params[:player1] #name= in form
    session[:player_2_name] = params[:player2]
    redirect '/play'
  end

  get '/play' do 
    @name_one = session[:player_1_name]
    @name_two = session[:player_2_name]
    erb(:play)
  end

  run! if app_file == $0

end
