# command = ''
# while command != 'bye'
#   puts command
#   command = gets.chomp
# end
# puts 'Good bye!'

# i = 0
# while i <= 99
#   i += 1
#   puts i.to_s + ' butylok soku na stini!'
# end

# Gluha babulya
str1 = ''
while str1 != 'BYE BYE BYE'
  str1 = gets.chomp
  if str1 == str1.upcase
    puts 'NI NIRAZU Z ' + rand(1938...1951).to_s + ' ROKU!'
  else
    puts 'SCHO? GOVORY GOLOSNISHE!?'
  end
end
puts 'BYE MIJ VNUCHOK!'
