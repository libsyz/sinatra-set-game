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

  def generate_set
    cards = []
    card_1 = {number: 1, shape: 'square', color: 'blue', fill: 'hideout'}
    card_2 = {number: 2, shape: 'square', color: 'blue', fill: 'jupiter'}
    card_3 = {number: 3, shape: 'square', color: 'blue', fill: 'plain'}
    cards << card_1 << card_2 << card_3
  end

end
