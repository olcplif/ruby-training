# Умовні оператори
x = 26
y = 26

if x < y # > == != <= >=
  puts 'X menshe Y'
elsif x == y
  puts 'X = Y'
  if x == 26
    puts 'X = 26'
  end
elsif x == 6
  puts 'X = 6'
elsif x == 7
  puts 'X = 7'
else
  puts 'X bilshe chy dorivnyue Y'
end

isSmall = true
if !isSmall or x == 8 # and
  puts 'OK!'
end
