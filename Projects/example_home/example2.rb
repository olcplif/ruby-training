# Masyvy
#arr = Array [1 , 44, -54.22, true, "Hello"]
#puts arr

# Вивід масиву
names = Array ["Olesya", "Sasha", "Ustym", "Pavlo", "Andrij", "Iryna"]
names[3] = "Microft"
#puts names[1, 3]

# Внесення елементів масиву по індексно
list = Array.new
list[0] = 11
list[4] = 31
puts list
puts list.length()

#Реверс
#puts names.reverse()
# Пошук в масиві
#puts list.include? 111

#Асоціативні масиви - замість індексів використовуються ключі
countries = {
  "UA" => "Ukraine",
  1 => 1.01,
  :PL => "Poland"
}
puts countries["UA"]
puts countries[1]
