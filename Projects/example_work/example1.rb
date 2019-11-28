print 'Vvedit X: '
x = gets.chomp.to_i
print 'Vvedit Y: '
y = gets.chomp.to_i

puts x.to_s + ' + ' + y.to_s + ' = ' + (x + y).to_s
puts x.to_s + ' - ' + y.to_s + ' = ' + (x - y).to_s
puts x.to_s + ' * ' + y.to_s + ' = ' + (x * y).to_s
puts x.to_s + ' / ' + y.to_s + ' = ' + (x / y).to_s

if x > y
  puts 'X > Y'
  elsif x == y
    puts 'X = Y'
  else
    puts 'X < Y'
end
