require 'rubygems'
require 'bundler'
require 'sinatra'
require 'sinatra/reloader' if development?


Bundler.require


require './card_generator'
require './set_card_app'
require './card_checker'




run MyApp
