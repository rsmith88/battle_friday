require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
  # @game = Game.instance << replaced by before/do block @ top
    erb :play
  end

  get '/attack' do
#   @game = Game.instance
    @game.attack(@game.opponent)
    erb :attack
  end

# start the server if ruby file executed directly
 run! if app_file == $0

end
