require_relative 'Drink'
require_relative 'Machine'
require_relative 'Suica'

suica = Suica.new
machine = Machine.new
suica.charge = 200
machine.drinkList



machine.buy("いろはす", suica)
machine.chargeDrink("ペプシ",100)
machine.buy("いろはす", suica)
machine.buy("モンスター", suica)
machine.drinkList
puts suica.deposit
puts machine.sales
