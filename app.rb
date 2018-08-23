require 'sinatra/base'

class Battle < Sinatra::Base
    enable :sessions

  get '/' do
   erb(:index)
  end

  post '/names' do
    session[:player_one] = params[:player_one] #name= in form
    session[:player_two] = params[:player_two]
    session[:player_one_points] = 100
    session[:player_two_points] = 100
    redirect '/play'
  end

  get '/play' do 
    @name_one = session[:player_one]
    @name_two = session[:player_two]
    @player_one_points = session[:player_one_points]
    @player_two_points = session[:player_two_points]
    # p @name_one
    # p @player_one_points
    erb(:play)
  end



  run! if app_file == $0

end
