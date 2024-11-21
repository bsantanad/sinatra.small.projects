require 'sinatra'

# sinatra uses dsl syntax `verb 'route' do`
get '/' do
  "hello, world!"
end
