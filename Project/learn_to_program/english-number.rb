# Програма, яка перекладає введене число англійською мовою

def englishNumber number
  if number < 0 # Відсіюємо від'ємні числа
    return 'Vvedit nevidemne chyslo'
  end
  if number == 0 # Визначаємо нуль
    return 'zero'
  end
# Більше особливих випадків немає як і повернень по return

numString = '' # Значення цієї змінної буде повертати метод

# Описуємо масив одиниць
onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

# Описуємо масив  десятків
tensPlace = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

# Описуємо масив першого десятків
 teenagers = ['eleven',  'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

# left - скільки від числа нам потрібно ще вивести
# write - частина числа, яку ми виводимо в даний момент
left = number
write = left / 100 # Скільки сотень на потрібно вивести 764/100=7
left = left - write*100 # Віднімаємо сотні 764-7*100=64

if write > 0
  hundreds = englishNumber write
  numString = numString + hundreds + ' hundred'
  #  Это называется "рекурсия".  Так что же я только что сделал?
  #  Я велел этому методу вызвать себя, но с параметром "write" вместо
  #  "number".  Помните, что "write" это (в настоящий момент) число
  #  сотен, которые нужно вывести.  Прибавив "hundreds" к "numString",
  #  мы добавляем после неё строку ' hundred'.  Так, например, если
  #  мы сначала вызвали englishNumber с 1999 (т.е. "number" = 1999),
  #  затем в этой точке "write" будет равен 19, а "left" равен 99.
  #  Наиболее лениво в этом месте было бы заставить englishNumber
  #  вывести нам 'nineteen', а затем мы выведем ' hundred',
  #  и потом оставшаяся часть englishNumber выведет 'ninety-nine'.
  if left > 0
    numString = numString + ' '  #  Так, мы не выводим 'two hundredfifty-one'...
  end
end

write = left/10 #  Сколько десятков осталось вывести?
left = left - write*10 #  Вычтем эти десятки.

if write > 0
  if (write == 1) and (left > 0)
    #  Поскольку мы не можем вывести "tenty-two" вместо "twelve",
    #  нам нужно сделать для них особую обработку.
    numString = numString + teenagers[left-1]
    #  "-1" здесь потому, что teenagers[3] это 'fourteen', а не 'thirteen'.

    #  Поскольку уже мы позаботились о цифре для единиц,
    #  нам не осталось ничего для вывода.
    left = 0
  else
    numString = numString + tensPlace[write-1]
    #  "-1" потому, что tensPlace[3] это 'forty', а не 'thirty'.
  end

  if left > 0
    #  Так, мы не выводим 'sixtyfour'...
    numString = numString + '-'
  end
end

write = left  #  Сколько единиц осталось вывести?
left  = 0     #  Вычтем эти единицы.

if write > 0
  numString = numString + onesPlace[write-1]
  #  "-1" потому, что onesPlace[3] это 'four', а не 'three'.
end

#  А теперь мы просто возвращаем "numString"...
numString
end

# puts englishNumber(26)
puts englishNumber(1054)
