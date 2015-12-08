require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    @names = params[:names]
    erb(:play)
  end

#start the server if the ruby file is executed directly
  run! if app_file == $0
end
