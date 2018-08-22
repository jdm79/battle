require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
   erb(:index)
  end

  post '/names' do
    @name_one = params[:player1]
    @name_two = params[:player2]
    erb(:play)
  end

  run! if app_file == $0

end
