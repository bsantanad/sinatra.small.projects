require 'sinatra'

# before we process a route
# tell the content_type is txt
# hash of what defeats what
# the valid options for playing (throwing) are the keys of the defeat hash
before do
  content_type :txt
  @defeat = { rock: :scissors, paper: :rock, scissors: :paper }
  @throws = @defeat.keys
end

get '/throw/:type' do
  # the params[] hash stores querystring AND form data
  player_throw = params[:type].to_sym

  # if what the user throw is not a valid move, lets return 403 and tell them
  # the valid moves
  unless @throws.include?(player_throw)
    halt 403, "you must throw one of the following #{@throws}"
  end

  # select a random throw for the computer
  computer_throw = @throws.sample

  if player_throw == computer_throw
    'You tied with the computer. Try again'
  elsif computer_throw == @defeat[player_throw]
    "Nicely done; #{player_throw} beats #{computer_throw}"
  else
    "Damn; #{computer_throw} beats #{player_throw}, Better luck next time."
  end
end
