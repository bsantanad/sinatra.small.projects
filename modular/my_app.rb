require 'sinatra/base'

class MyApp < Sinatra::Base
  get '/' do
    'hello from my app!'
  end

  # only start the server if the file has been executed directly with:
  # % ruby thisfile.rb
  run! if __FILE__ == $0
end
