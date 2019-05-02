
class MyApp < Sinatra::Base

  get "/" do
    cg = CardGenerator.new
    checker = CardChecker.new
    cards = cg.generate_cards(3)
    set = checker.is_set?(cards)
    erb :home, locals: {cards: cards, set: set}
  end

  get '/set' do
    cg = CardGenerator.new
    checker = CardChecker.new
    cards = cg.generate_set
    set = checker.is_set?(cards)
    erb :home, locals: {cards: cards, set: set}
  end
end


