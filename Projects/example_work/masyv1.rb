# words = []
# str = nil
# puts 'Введіть рядок'
# while str != ''
#   str = gets.chomp
#   words.push str
# end
# puts 'Відсортований масив'
# i = 0
# l = words.length
# words.each do |word|
#   while i <= l
#     if word

=begin Сортуваня масиву 3 чисел
sort = []
sort[0] = gets.chomp
sort[1] = gets.chomp
sort[2] = gets.chomp
puts ''
puts 'довжина - ' + sort.length.to_s
puts ''
if sort[0] <= sort[1] and sort[0] <= sort[2]
  puts sort[0]
else
  if sort[1] <= sort[0] and sort[1] <= sort[2]
    puts sort[1]
  else
    puts sort[2]
    sort.push [2]
  end
end
=end

# Введення елементів масиву і їх сортування
sort = []
sort.push gets.chomp
sort.push gets.chomp
sort.push gets.chomp
puts ''
# puts sort
l = sort.length
# puts 'Довжина = ' + l.to_s
i = 0
puts '***'
# sort.each do |a|
while i < l
  if sort[i] <= sort[i+1] and sort[i] <= sort[i+1]..sort[l-1]
      puts sort[i]
      i += 1
  else
    # if sort.[i+1] <= sort ?????? забуксовал...
    puts sort[i+1]
    i += 1
  end
end
