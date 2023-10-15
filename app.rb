require 'sinatra'
require 'rack/cors'
require 'rack/throttle'
require_relative 'routes/alliances_routes'

use Rack::Cors do
    allow do
      origins '*'
      resource '*', headers: :any, methods: [:get]
    end
  end

use Rack::Throttle::Interval,    :min => 1.0  
use Rack::Throttle::Hourly,      :max => 100  
use Rack::Throttle::Daily,       :max => 1000 

configure do
  set :server, :webrick
end
