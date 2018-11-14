require 'sinatra/base'
require './lib/player.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1_name = Player.new(params[:player_1_name])
    $player_2_name = Player.new(params[:player_2_name])
    session[:player_1_hp] = 60
    session[:player_2_hp] = 60
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1_name.name
    @player_2_name = $player_2_name.name
    @player_1_hp = session[:player_1_hp]
    @player_2_hp = session[:player_2_hp]
    erb(:play)
  end

  get '/attack' do
    session[:player_2_hp] -= 10
    redirect '/play'
  end
end
