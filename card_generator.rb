 class CardGenerator
  attr_reader :shapes, :colors, :fills, :numbers


  def initialize
    @numbers = [1,2,3]
    @shapes = ["diamond", "square", "circle"]
    @colors = ["red", "green", "blue"]
    @fills = ["plain", "jupiter", "hideout"]
  end

  def generate_cards(number)
    cards = []
    number.times do
      card = {}
      card[:number] = numbers.sample
      card[:shape] = shapes.sample
      card[:color] = colors.sample
      card[:fill] = fills.sample

      cards << card
    end
    cards
  end

end
