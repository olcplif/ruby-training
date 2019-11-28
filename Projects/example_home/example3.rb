# Функції або ж методи
STDOUT.flush
def sayHello(word='No', num=0)
  puts 'Hello my friends!'
  puts 'Parametr word = ' + word + ' and parametr num = ' + num.to_s
end
sayHello('TExt', 26)

puts ("*****")
#Функція виводить значення
def suma(x, y)
  return x + y, 77
  #все що нижче не виконується
  puts x + y
end
res = suma(33, 4)
puts res
puts res[0]
puts res[1]
