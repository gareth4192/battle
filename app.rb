require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    'Hello Battle!'
  end

#start the server if the ruby file is executed directly
  run! if app_file == $0
end
