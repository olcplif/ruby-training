def solution(number)
  # convert the number to a roman numeral string
=begin My metod:
  romanNumeral = []
  i = 1
  thousand = number / 1000
  hundred = (number - (thousand * 1000)) / 100
  ten = (number - (thousand * 1000) - (hundred * 100)) / 10
  units = number - (thousand * 1000) - (hundred * 100) - (ten * 10)

  if (thousand >= 1) and (thousand <= 3)
    while i <= thousand
      romanNumeral.push 'M'
      i += 1
    end
    i = 1
  end

  if (hundred >= 1) and (hundred <= 3)
    while i <= hundred
      romanNumeral.push 'C'
      i += 1
    end
    i = 1
  elsif hundred == 4
     romanNumeral.push 'CD'
  elsif hundred == 5
    romanNumeral.push 'D'
  elsif (hundred >= 6) and (hundred <= 8)
    romanNumeral.push 'D'
    while i <= (hundred - 5)
      romanNumeral.push 'C'
      i += 1
    end
    i = 1
  elsif hundred == 9
    romanNumeral.push 'CM'
  end

  if (ten >= 1) and (ten <= 3)
    while i <= ten
      romanNumeral.push 'X'
      i += 1
    end
    i = 1
  elsif ten == 4
     romanNumeral.push 'XL'
  elsif ten == 5
    romanNumeral.push 'L'
  elsif (ten >= 6) and (ten <= 8)
    romanNumeral.push 'L'
    while i <= (ten - 5)
      romanNumeral.push 'X'
      i += 1
    end
    i = 1
  elsif ten == 9
    romanNumeral.push 'XC'
  end

  if (units >= 1) and (units <= 3)
    while i <= units
      romanNumeral.push 'I'
      i += 1
    end
    i = 1
  elsif units == 4
     romanNumeral.push 'IV'
  elsif units == 5
    romanNumeral.push 'V'
  elsif (units >= 6) and (units <= 8)
    romanNumeral.push 'V'
    while i <= (units - 5)
      romanNumeral.push 'I'
      i += 1
    end
    i = 1
  elsif units == 9
    romanNumeral.push 'IX'
  end

  romanNumeral.join
=end

letters = %w[M CM D CD C XC L XL X IX V IV I]
numbers = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
values = letters.zip(numbers)

n=number
c=0
values.map{|l,v| c, n = n.divmod v; l*c}.join '' # magic

end
p solution(21)
p solution(89)
p solution(91)
p solution(984)
p solution(1000)
p solution(1889)
p solution(1989)
