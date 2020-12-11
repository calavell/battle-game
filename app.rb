require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

   enable :sessions

    get '/' do
      erb :index
    end

    post '/names' do
      player_1 = Player.new(params[:player_1_name])
      player_2 = Player.new(params[:player_2_name])
      $game = Game.new(params[:player_1_name], params[:player_2_name])
      redirect '/play'
    end

  get '/play' do
    # @player_1 = $game.player_1
    # @player_2 = $game.player_2
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack
    erb :attack
  end

    run! if app_file == $0
end
