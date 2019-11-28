# Введення елементів масиву з клавіатури до пустого рядка
text = []
puts 'Введіть елементи масиву: '
str = gets.chomp
text.push str
while str != ''
  str = gets.chomp
  text.push str
end
text.pop
# Сортування масиву методом sort
puts 'Сортування методом sort: ' + text.sort.to_s

puts '***'

# Сортування масиву бульбашковим методом
period = text.length - 1
n = 1
period.times do |_|
  max = text[0]
  max_i = 0
  text[0..-n].each.with_index do |x, i|
    if x > max
      max = x
      max_i = i
    end
  end
  text[max_i], text[text.length-n] = text[text.length-n], text[max_i]
  n += 1
end
puts 'Сортування бульбашковим методом: ' + text.to_s
