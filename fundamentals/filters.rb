require 'sinatra'

before '/' do
  @before_value = 'foo'
end

get '/' do
  "before_value has been set to #{@before_value}"
end

after do
  puts "after filter called to perform some task."
end

before '/home' do
  @before_value = 'jose'
end

get '/home' do
  "before_value has been set to #{@before_value}"
end
