require 'sinatra/base'

module MyHelpers
  module CardChecker
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
end
