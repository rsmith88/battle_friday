require 'sinatra/base'
require_relative './lib/player.rb'

class Battle < Sinatra::Base
  enable :sessions

get '/' do
  erb :index
end

post '/names' do
  $p1 = Player.new(params[:player_1_name])
  $p2 = Player.new(params[:player_2_name])
  redirect '/play'
end

get '/play' do
  @player_1 = $p1.name
  @player_2 = $p2.name
  erb :play
end

get '/attack' do
  @player_1 = $p1.name
  @player_2 = $p2.name
  $p2.health -= 10
  @player_2_health = $p2.health
  erb :attack
end

# start the server if ruby file executed directly
 run! if app_file == $0

end
