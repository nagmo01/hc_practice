#先に配列を並び変えて、取り出す際は順番にする
members = ["A", "B", "C", "D", "E", "F"].shuffle

# 3:3の通話か2:4の通話にするかを決める
group = ["3-3", "2-4"].sample


# 3-3 の場合
if group == "3-3"

  
  #Aグループ3人、とBグループ3人にわける
  #shiftメソッドは配列から引数分取り出す破壊的メソッド
  a = members.shift(3)
  b = members



else

  #Aグループ2人、とBグループ4人にわける
  a = members.shift(2)
  b = members


  
end

puts "#{group}でグループ通話を行なっています"
puts "Aグループは #{a.join(', ')}の#{a.size}人です"
puts "Bグループは #{b.join(', ')}の#{b.size}人です"

