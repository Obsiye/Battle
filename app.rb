require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @current_player = @game.players[0].name
    @current_enemy = @game.players[1].name
    @game.attack(@game.players[1])
    @game.switch_turn
    if @game.game_over?
      redirect '/gameover'
    else
      erb(:attack)
    end
  end

  get '/gameover' do
    @loser = @game.loser.name
    erb(:gameover)
  end
end
