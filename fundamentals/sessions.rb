require 'sinatra'

configure do
 enable :sessions
end

before do
  content_type :txt
end

get '/set' do
  session[:foo] = Time.now
  'Session value set'
end

get '/get' do
  "Session value is #{session[:foo]}"
end
