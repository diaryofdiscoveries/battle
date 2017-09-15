require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/hit' do
    @game = $game
    @game.hit(@game.player_1)
    erb :hit
  end

  run! if app_file == $0

end
