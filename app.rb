require 'sinatra'
require "sinatra/reloader" if development?
require_relative './lib/person.rb'
require_relative './lib/game.rb'

class Battle < Sinatra::Base
  
  set :session_secret, 'super secret'
  enable :sessions

  get '/' do
    erb :index
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/names' do
    player_one, player_two = Person.new(params[:player_one]), Person.new(params[:player_two])
    $game = Game.new(player_one, player_two)
    redirect '/play'
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player_two)
    erb :attack
  end

end