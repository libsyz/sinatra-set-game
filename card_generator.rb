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
      card = Hash.new(shape: shapes.sample,
                      color: color.sample,
                      fill: fills.sample)
      cards << card
    end
    cards
  end

end
