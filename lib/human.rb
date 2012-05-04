class Human

  attr_reader :symbol

  def initialize(symbol)
    @symbol = symbol.slice(0)
  end

end
