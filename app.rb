require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
   erb(:index)
  end

  post '/names' do
    p1 = Player.new(params[:player_one])
    p2 = Player.new(params[:player_two])
    $game = Game.new(p1,p2)
    redirect '/play'
  end

  get '/play' do 
    @p1 = $game.p1.name
    @p2 = $game.p2.name
    @player_one_points = $game.p1.hitpoints
    @player_two_points = $game.p2.hitpoints
    erb(:play)
  end

  get '/attack' do
    @p1 = $game.p1.name
    @p2 = $game.p2.name
    $game.attack($game.p2)
    erb(:attack)
  end

  run! if app_file == $0
end
