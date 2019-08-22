require_relative 'config/environment'
require_relative "models/piglatinizer.rb"

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    @p = PigLatinizer.new(params[:user_input])
   # @p.piglatinize(params[:user_input])
  end
  
end