def englishNumber number
  if number < 0  #  Без отрицательных чисел.
    return 'Пожалуйста, введите неотрицательное число.'
  end
  if number == 0
    return 'zero'
  end

  #  Больше нет особых случаев!  Больше нет возвратов по return!

  numString = ''  #  Эту строку мы будем возвращать.

  #  единицы
  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  #  десятки
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  #  "left" - сколько от числа нам ещё осталось вывести.
  #  "write"  - часть числа, которую мы выводим сейчас.
  #  write и left... поняли?  :)
  left  = number

  # Перевіряємо кількість трильйонів
  write = left/1000000000000
  left = left - write*1000000000000

  if write > 0
    trillions = englishNumber write
    numString = numString + trillions + ' trillion'

    if left > 0
      numString = numString + ' '
    end
  end

  # Перевіряємо кількість міліардів
  write = left/1000000000
  left = left - write*1000000000

  if write > 0
    billions = englishNumber write
    numString = numString + billions + ' billion'

    if left > 0
      numString = numString + ' '
    end
  end


  # Перевіряємо кількість мільйонів
  write = left/1000000
  left = left - write*1000000

  if write > 0
    millions = englishNumber write
    numString = numString + millions + ' million'

    if left > 0
      numString = numString + ' '
    end
  end

  # Перевіряємо кількість тисяч
  write = left/1000
  left = left - write*1000

  if write > 0
    thousands = englishNumber write
    numString = numString + thousands + ' thousand'

    if left > 0
      numString = numString + ' '
    end
  end

  # Перевіряємо к-сть сотень
  write = left/100          #  Сколько сотен осталось вывести?
  left  = left - write*100  #  Вычтем эти сотни.

  if write > 0
    #  Вот здесь действительно хитрый фокус:
    hundreds  = englishNumber write
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
      #  Так, мы не выводим 'two hundredfifty-one'...
      numString = numString + ' and '
    end
  end

  write = left/10          #  Сколько десятков осталось вывести?
  left  = left - write*10  #  Вычтем эти десятки.

  if write > 0
    if ((write == 1) and (left > 0))
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
      numString = numString + ' and '
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

puts englishNumber(972)
