str = ['Зміст', 'Глава ', 'Числа', 'Букви', 'Змінні', 'стор.', 1, 72, 118]
n = 1
lineWidth = 50
puts 'Зміст'.center lineWidth
while n <= 3
  puts str[1].to_s + n.to_s + ': ' + (str[1+n].center lineWidth / 5).to_s + (str[5].rjust lineWidth /2).to_s + ' ' + (str[5+n].to_s.rjust lineWidth / 15)
  n += 1
end
