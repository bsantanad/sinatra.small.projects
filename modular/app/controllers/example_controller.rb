class ExampleController < ApplicationController
  get '/' do
    title "Example Page"
    erb :example
  end

  get '/other' do
    erb :other
  end

end
