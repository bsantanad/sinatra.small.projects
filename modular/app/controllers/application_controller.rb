class ApplicationController < Sinatra::Base

  # we will define this application helper elsewhere
  helpers ApplicationHelper

  # set directory for templates to ../views, but make the path absolute 
  set :views, File.expand_path('../../views', __FILE__)

  # do not enable logging when running tests
  configure :production, :development do
    enable :logging
  end 

  # every controller will inherit this 404 not found handler
  not_found do
    # this `title` method is not part of Sinatra, we need to implement it in
    # the ApplicationHelper
    title 'Not Found!' 
    erb :not_found
  end

end
