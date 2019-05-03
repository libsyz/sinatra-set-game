

class MyApp < Sinatra::Base
  helpers MyHelpers

  get "/" do
    cards = generate_cards(3)
    set = is_set?(cards)
    erb :home, locals: {cards: cards, set: set}
  end

  get '/set' do
    cards = generate_cards(3)
    while is_set?(cards) == false
      cards = generate_cards(3)
    end
    erb :home, locals: {cards: cards, set: true}
  end
end


