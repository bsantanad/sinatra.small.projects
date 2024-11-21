require 'sinatra'
require './sinatra/post_get'

post_get '/' do 
  "hi #{params[:name]}"
end
