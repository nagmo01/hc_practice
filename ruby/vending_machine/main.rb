class Suica
  def initialize
    @deposit = 500
  end

  def getDeposit
    @deposit
  end

  def chargeDeposit=(deposit)
    #100未満なら例外処理
    if deposit >= 100
      @deposit += deposit
    else
      puts "例外です"
    end

  end

end

suica = Suica.new
p suica.getDeposit
suica.chargeDeposit = 200
p suica.getDeposit

class Drink

  def initialize(name, price, stock)
    @name = name
    @price = price
    @stock = stock
  end

  def getName
    @name
  end

  def getPrice
    @price
  end

  def getStock
    @stock
  end


end

drink = Drink.new("コーラ", 200, 5)
p drink.getName
p drink.getPrice
p drink.getStock

class Machine
  def initialize(sales, drink)
    @sales = sales
    @drinks = []
    @drinks.push(drink)
  end

  def getSales
    @sales
  end

  def getDrinks
    @drinks
  end

  def checkStock
    @stock > 0 ? true:false
  end

  def orderDrink(suica)
    if suica >= @juice.values
      @stock -= 1
      @total_sales += @juice.values

  end
end

machine = Machine.new(drink.getDrink, 0)
machine2 = Machine.new
p machine.getJuice
p machine2.getJuice

p machine.checkStock
p machine2.checkStock
p "aaaa"
puts machine.orderDrink
puts machine2.orderDrink

=begin
class Machine

  def initialize(juice, stock)
    @juice = juice
    @stock = stock

  end

  def getJuice
    @juice
  end

  def getStock
    @stock
  end

  def checkBuy

    if @stock > 0
      puts "販売中"
      return true

    else
      puts "売り切れ"
      return false

    end

end

class Drink

  def initialize(name="ペプシ", price=150)

    @name = name
    @price = price

  end

  def getName
    @name
  end

  def getPrice
    @price
  end


end


=end
