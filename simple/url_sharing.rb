require 'sinatra'


['/one', '/two'].each do |route|
  get route do
    "triggered #{route} via GET"
  end

  post route do
    "triggered #{route} via POST"
  end

  put route do
    "triggered #{route} via PUT"
  end

  delete route do
    "triggered #{route} via DELETE"
  end

end

get '/something/?' do
  'this can be called with or without trailing `/`'
end
