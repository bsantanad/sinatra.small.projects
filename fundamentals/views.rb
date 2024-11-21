require 'sinatra'

get '/' do
  @users = ['sally', 'jerry', 'jose']
  erb :home
end

get '/test' do
  # this will render view `views/more/test.erb`
  @something = 'you can see me'
  erb 'more/test'.to_sym
end
