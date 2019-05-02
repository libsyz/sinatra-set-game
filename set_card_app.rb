require 'sinatra'
require 'sinatra/reloader' if development?
require_relative 'card_generator'


class MyApp < Sinatra::Base
  use CardGenerator

  get "/" do
    puts "I am here in the yield brother"
    puts @shapes
    @shapes
  end

end


