require 'sinatra'
require "sinatra/reloader" if development?
require_relative './lib/person.rb'

class Battle < Sinatra::Base
  
  set :session_secret, 'super secret'
  enable :sessions

  get '/' do
    erb :index
  end

  get '/play' do
    @player_one, @player_two = $player_one.name, $player_two.name
    erb :play
  end

  post '/names' do
    $player_one, $player_two = Person.new(params[:player_one]), Person.new(params[:player_two])
    redirect '/play'
  end

  get '/attack' do
    @player_one, @player_two = $player_one.name, $player_two.name
    erb :attack
  end

end