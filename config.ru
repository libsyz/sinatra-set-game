require 'sinatra'
require 'sinatra/reloader' if development?
require './card_generator'
require './set_card_app'
require './card_checker'

run MyApp
