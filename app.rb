require 'sinatra/base'
require 'player'

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
    @p1 = session[:player_one]
    @p2 = session[:player_two]
    @player_one_points = session[:player_one_points]
    @player_two_points = session[:player_two_points]
    erb(:play)
  end

  get '/attack' do
    # @player_two_points.to_i - 10
    @p1 = session[:player_one]
    @p2 = session[:player_two]
    erb(:attack)
  end

  # get '/points' do
  #   erb(:points)
  # end

  run! if app_file == $0

end
