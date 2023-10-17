class Machine

  def initialize
    drink1 = Drink.new("ペプシ", 150, 5)
    drink2 = Drink.new("モンスター", 230, 5)
    drink3 = Drink.new("いろはす", 120, 5)

    @sales = 0
    @drinks = [drink1, drink2, drink3]

  end

  def drink
    @drink
  end

  def sales
    @sales
  end

  def drinkList
    @drinks.each do |drink|
      p "#{drink.name},#{drink.stock}"
    end
  end

  def onSale
    list = []

    @drinks.each do |drink|
      if drink.stock > 0
        list.push(drink.name)
      end
    end
    return list
  end

  def getDrink(name)

    @drinks.each do |drink|
      if drink.name == name
        return drink
      end
    end
  end
  
  def buy(name, suica)
    drink = getDrink(name)
    if onSale.include?(name) && suica.deposit > drink.price
      drink.stock = drink.stock - 1
      suica.deposit = suica.deposit - drink.price
      @sales += drink.price
    else
      puts "例外"
    end
  end

  def chargeDrink(name, stock)
    @drinks.each do |drink|
      if drink.name == name
        drink.stock = drink.stock + stock
      end
    end
  end

end


