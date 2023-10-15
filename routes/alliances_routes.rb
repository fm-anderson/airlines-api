require 'sinatra'
require_relative '../models/alliance'

get '/' do
    content_type :json
    Alliance.all_data.to_json
  end

  
get '/alliances' do
  content_type :json
  Alliance.all.to_json
end
  
get '/alliances/:alliance' do
  content_type :json
  alliance_data = Alliance.find(params['alliance'])
  
  if alliance_data
    alliance_data.to_json
  else
    status 404
    { error: "Alliance not found" }.to_json
  end
end
  
get '/alliances/:alliance/airlines/:airline' do
  content_type :json
  airline_data = Alliance.find_airline(params['alliance'], params['airline'])
  
  if airline_data
    airline_data.to_json
  else
    status 404
    { error: "Airline not found in the #{params['alliance']} alliance" }.to_json
  end
end
