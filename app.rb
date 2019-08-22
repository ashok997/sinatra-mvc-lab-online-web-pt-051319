require_relative 'config/environment'
require_relative "models/piglatinizer.rb"

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    @pig = PigLatinizer.new
    @input = params[:user_input]
    binding.pry
    erb :show
  end
  
end