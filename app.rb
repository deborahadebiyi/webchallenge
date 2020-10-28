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

get '/random-cat' do
  @random_name = ["Amigo", "Oscar"].sample
  erb(:index)
end

get '/cat-form' do
  erb :cat_form
end

post '/named-cat' do
  p params
  @random_name = params[:name]
  erb(:index)
end
