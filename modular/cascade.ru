require 'sinatra/base'

class Foo < Sinatra::Base
  get('/foo') { 'foo' }
end

class Bar < Sinatra::Base
  get('/bar') { 'bar' }
end

# do not know how to run this though
run Rack::Cascade, [Foo, Bar]
