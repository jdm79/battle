require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
   erb(:index)
  end

  post '/names' do
    $game = Game.new
    $p1 = Player.new(params[:player_one])
    $p2 = Player.new(params[:player_two])
    redirect '/play'
  end

  get '/play' do 
    @p1 = $p1.name
    @p2 = $p2.name
    @player_one_points = $p1.hitpoints
    @player_two_points = $p2.hitpoints
    erb(:play)
  end

  get '/attack' do
    @p1 = $p1.name
    @p2 = $p2.name
    $game.attack($p2)
    erb(:attack)
  end

  run! if app_file == $0
end
