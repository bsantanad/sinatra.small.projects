require 'sinatra'

before do
  content_type :txt
end

configure do
  set :show_exceptions, false
end

not_found do
  "whoops, you requested a route that is not avaliable"
end

get '/div_by_zero' do
  0 / 0
end

error do
  'that did not work'
end
