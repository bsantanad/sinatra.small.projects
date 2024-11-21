require 'sinatra'
require './sinatra/link_helper'

get '/' do
  erb :index 
end

__END__

@@index
<html>
<head>
  <title>Link Helper Test</title>
</head>
<body>
  <nav>
    <ul>
      <li><a href="<%= link(:index) %>">Index</a></li>
      <li><a href="<%= link(:about) %>">About</a></li>
      <li><a href="<%= link(:random) %>">Random</a></li>
    </ul>
  </nav>
</body>
</html>
