require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
    get '/' do

        erb :index
    end

    get '/new' do
        erb :create_puppy
    end

    post '/puppy' do

        puppy_info = params
        #binding.pry
        @name = params["name"]
        @breed = params["breed"]
        @age = params["age"]
       
        erb :display_puppy
    end
end
