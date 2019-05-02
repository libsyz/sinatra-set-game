
class CardChecker
  def is_set?(cards)
    @cards = cards
    set(:number) && set(:color) && set(:shape) && set(:fill)
  end

  def set(key)
    count = @cards.group_by {|card| card[key] }.size
    (count == 1) || (count == 3)
  end

end
