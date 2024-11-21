require 'sinatra'

configure do
  mime_type :plain, 'text/plain'
end

before '/plain-text' do
  content_type :plain
end

get '/html' do
  '<h1>this is rendered</h1>'
end

get '/plain-text' do
  headers "X-Custom-Value" => "this is a custom http header"
  '<h1>this is not rendered</h1>'
end
