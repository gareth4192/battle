require 'sinatra/base'
class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end

  post '/action' do
    session[:Attack] = params[:Attack]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    @start_bell = session[:Attack]
    erb :play
  end

#start the server if the ruby file is executed directly
  run! if app_file == $0
end
