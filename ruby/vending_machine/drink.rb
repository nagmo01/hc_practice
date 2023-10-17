class Drink
  def initialize(name, price, stock)
    @name = name
    @price = price
    @stock = stock
  end

  attr_accessor :stock
  attr_reader :name, :price
end
