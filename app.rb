require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

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
  @player_1 = $game.player1.name
  @player_2 = $game.player2.name
  @player_2_health = $game.player2.health
  erb :play
end

get '/attack' do
  @player_1 = $game.player1.name
  @player_2 = $game.player2.name
  $game.player2.receive_attack
  @player_2_health = $game.player2.health
  erb :attack
end

# start the server if ruby file executed directly
 run! if app_file == $0

end
