require 'sinatra'
require 'sinatra/contrib/all'
require 'json'

require_relative 'models/roshambo'

game = Game.new

get '/' do
  erb(:home)
end

get '/roshambo/:hand1/:hand2' do
  hand1 = params[:hand1]
  hand2 = params[:hand2]
  @winner = game.throw(hand1, hand2)
  erb(:result)
end
