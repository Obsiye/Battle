require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @current_player = $game.players.first.name
    @current_enemy = @game.players.last.name
    @game.attack(@game.players.last)
    @game.switch_turn
    if @game.game_over?
      redirect '/gameover'
    else
      erb(:attack)
    end
  end

  get '/gameover' do
    @loser = $game.loser.name
    erb(:gameover)
  end
end
