require 'sinatra/base'

module MyHelpers
  NUMBERS = [1,2,3]
  SHAPES = ["diamond", "square", "circle"]
  COLORS = ["red", "green", "blue"]
  FILLS = ["plain", "jupiter", "hideout"]

  def generate_cards(number)
    cards = []
    number.times do
      card = {}
      card[:number] = NUMBERS.sample
      card[:shape] = SHAPES.sample
      card[:color] = COLORS.sample
      card[:fill] = FILLS.sample

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

  def is_set?(cards)
    @cards = cards
    attributes = [:number, :color, :shape, :fill]
    attributes.all? { |attr| set(attr) }
  end

  def set(key)
    count = @cards.group_by {|card| card[key] }.size
    (count == 1) || (count == 3)
  end
end
