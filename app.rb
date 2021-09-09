require 'sinatra'
require "sinatra/reloader" if development?

class Battle < Sinatra::Base

  get '/' do
    "Hello World"
  end

end