require 'sinatra'

set :session_secret, "issa secret"

get '/' do
  "hello!"
end

get '/secret' do
  "Ssh it's a secret!"
end

get '/wtf' do
  "Whatever"
end

get '/cat' do
  @random_name = ["Amigo", "Oscar"].sample
  erb(:index)
end
