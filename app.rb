require 'sinatra'
require_relative 'routes/alliances_routes'

configure do
  set :server, :webrick
end
