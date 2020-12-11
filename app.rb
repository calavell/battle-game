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
    @game = $game
    erb :play
  end

  get '/attack1' do
    @game = $game
    @game.attack(@game.player_2)
    erb :attack1
  end

  get '/attack2' do
    @game = $game
    @game.attack(@game.player_1)
    erb :attack2
  end

    run! if app_file == $0
end
