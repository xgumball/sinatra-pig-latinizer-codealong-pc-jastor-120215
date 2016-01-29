require 'bundler'
Bundler.require
require_relative 'models/pig_latinize.rb'
class ApplicationController < Sinatra::Base

  get '/' do #this is the name of the route
      erb :index
  end
  
  post '/results' do
        sentence = params[:sentence]
      @pig_latinized_sentence = to_pig_latin(sentence)
        erb :results
  end
end
