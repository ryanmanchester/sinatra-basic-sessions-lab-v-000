require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  configure do
    enable :sessions
    set session_secret, "secret"
    @session = session
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
  #binding.pry
  @session["item"] = params["item"]
  end
end
