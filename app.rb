require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "home"
end

get '/secret' do
  "Hello again"
end

get '/random-cat' do
 @name = ["Amigo", "Mi sty", "Almond"].sample
erb(:index)
end

get '/cat-form' do
  erb(:cat_form)
end

post '/named-cat' do
  @name = params[:name]
  erb(:index)
end

