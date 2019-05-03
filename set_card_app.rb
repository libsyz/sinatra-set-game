require_relative 'card_generator'
require_relative 'card_checker'

class MyApp < Sinatra::Base
  helpers MyHelpers

  get "/" do
    binding.pry
    cards = generate_cards(3)
    set = checker.is_set?(cards)
    erb :home, locals: {cards: cards, set: set}
  end

  get '/set' do
    cards = generate_cards(3)
    while is_set?(cards) == false
      cg.generate_cards(3)
    end
    erb :home, locals: {cards: cards, set: true}
  end
end


