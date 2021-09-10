require 'sinatra'
require "sinatra/reloader" if development?

class Battle < Sinatra::Base
  
  set :session_secret, 'super secret'
  enable :sessions

  get '/' do
    erb :index
  end

  get '/play' do
    @player_one, @player_two = session[:player_one], session[:player_two]
    erb :play
  end

  post '/names' do
    session[:player_one], session[:player_two] = params[:player_one], params[:player_two]
    redirect '/play'
  end

end