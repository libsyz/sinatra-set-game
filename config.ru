require 'sinatra'
require 'sinatra/reloader' if development?
require './card_generator'
require './set_card_app'

run MyApp
