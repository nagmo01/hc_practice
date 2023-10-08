#先に配列を並び変えて、取り出す際は順番にする
members = ["A", "B", "C", "D", "E", "F"].shuffle

# 3:3の通話か2:4の通話にするかを決める
group = [2, 3].sample

a = members.shift(group)
b = members

p a.sort
p b.sort
