class Machine

  def initialize
    @drinks = []
    5.times do
      @drinks.push(Drink.new('ペプシ',150))
      @drinks.push(Drink.new('いろはす', 120))
      @drinks.push(Drink.new('モンスター', 230))
    end
    @drinkList = {'ペプシ':150, 'いろはす': 120, 'モンスター': 230}
    @sales = 0
  end

  def drinks
    @drinks
  end

  def sales
    @sales
  end
  
  def drinkList
    a = 0
    b = 0
    c = 0
    @drinks.each do |drink|
      case drink.name
      when "ペプシ" then
        a += 1
      when "いろはす" then
        b += 1
      when "モンスター" then
        c += 1
      end
    end

    puts "ペプシ:#{a}本、いろはす:#{b}本、モンスター:#{c}本"
  end


  def getDrink(name)

    @drinks.each do |drink|
      if drink.name == name
        return drink
      end
    end
  end

  def buy(name,suica)
    drink = getDrink(name)
    if suica.deposit > drink.price
      @drinks.delete(drink)
      suica.deposit = suica.deposit - drink.price
      @sales += drink.price
    else
      raise "お金が足りません"
    end
  end

  def chargeDrink(name, stock)
    stock.times do
      @drinks.push(Drink.new(name,@drinkList[name]))
    end
  end


end

