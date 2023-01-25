require 'sinatra'

class App < Sinatra::Base
  get '/' do
    "My sinatra calculator app.\n"
  end
end