class CardGenerator
  attr_reader :shapes, :colors, :fills


  def initialize
    @shapes = ["oval", "square", "circle"]
    @colors = ["red", "green", "blue"]
    @fills = ["plain", "no_fill", "pattern"]
  end

  def generate_cards(number)
    cards = []
    number.times do
      card = {}
      card[:shape] = shapes.sample
      card[:color] = colors.sample
      card[:fill] = fills.sample

      cards << card
    end
    cards
  end

end
