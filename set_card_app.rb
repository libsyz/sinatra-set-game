
class MyApp < Sinatra::Base

  get "/" do
    cg = CardGenerator.new
    checker = CardChecker.new
    cards = cg.generate_cards(3)
    set? = cg.set?
    erb :home, locals: {cards: cards, set?: set?}
  end
end


