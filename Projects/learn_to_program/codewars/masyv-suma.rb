p array = [1, 2, 3, 4, 5, 6]
suma = 6
result = 0
supplements = []

i = 0
j = 0
n = 0
k = 0
l = array.length

array.each do |elem|
  if elem == suma
    supplements = [elem]
    p supplements.to_s
  end
end

while j < l - 1
  while i < l - 1
      result = array[j] + array[i + 1] + k
      if result == suma
        p '[' + array[j].to_s + ' + ' + array[i + 1].to_s + ']' + ' = ' + result.to_s
      end
      i += 1
  end
  n += 1
  j += 1
  i = 0
  i += n
end

i = 0
j = 0
n = 0
m = 2
k = array[m]
while j < l - 1
  while i < l - 2
      result = array[j] + array[i + 1] + k #array[i + 2]
      if result == suma
        p '[' + array[j].to_s + ' + ' + array[i + 1].to_s + ' + ' + array[i + 2].to_s + ']' + ' = ' + result.to_s
      end
      i += 1
  end
  n += 1
  j += 1
  i = 0
  i += n
end

i = 0
j = 0
n = 0
while j < l - 1
  while i < l - 3
      result = array[j] + array[i + 1] + array[i + 2] + array[i + 3]
      if result == suma
        p '[' + array[j].to_s + ' + ' + array[i + 1].to_s + ' + ' + array[i + 2].to_s + ' + ' + array[i + 3].to_s + ']' + ' = ' + result.to_s
      end
      i += 1
  end
  n += 1
  j += 1
  i = 0
  i += n
end

i = 0
j = 0
n = 0
while j < l - 1
  while i < l - 4
      result = array[j] + array[i + 1] + array[i + 2] + array[i + 3] + array[i + 4]
      if result == suma
        p '[' + array[j].to_s + ' + ' + array[i + 1].to_s + ' + ' + array[i + 2].to_s + ' + ' + array[i + 3].to_s + ' + ' + array[i + 4].to_s + ']' + ' = ' + result.to_s
      end
      i += 1
  end
  n += 1
  j += 1
  i = 0
  i += n
end



# p array.inject(0){ |result, elem| result + elem}
# array.shift
# p array

=begin
Запустити цикл
Перший елемент додати до наступного
Перевірити чи результат не дорівнює шуканій сумі
Якщо ТАК - елементи-доданки додати до масиву-результату, вивести масив елементів-доданків
Витіснити з масиву перший елемент
Якщо НІ - додати наступний елемент
=end

=begin
l = array.length
while l != 1
array.shift
p array
l -= 1
end
p ''
p array = [1, 2, 3, 4, 5]
p array.inject(0){ |result, elem| result + elem }
=end
