
require_relative "Drink"
require_relative "Machine"
require_relative "Suica"

suica = Suica.new
machine = Machine.new

machine.drinkList
machine.chargeDrink("ペプシ", 20)

machine.buy("いろはす", suica)
machine.buy("モンスター", suica)

machine.drinkList
puts machine.sales




