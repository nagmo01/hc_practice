class Drink
  def initialize(name, price, stock)
    @name = name
    @price = price
    @stock = stock
  end

  def name
    @name
  end

  def price
    @price
  end

  def stock
    @stock
  end

  def stock=(stock)
    @stock = stock
  end


end


