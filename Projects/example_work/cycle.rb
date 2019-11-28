# Glukha babulya
str = gets.chomp
# while str != 'BYE BYE BYE'
#   str = gets.chomp
#    if str == str.upcase
#      if str == 'BYE BYE BYE'
#        p 'BYE, VNUCHKU!'
#      else
#        p 'NI, NIRAZU Z ' + rand(1930..1951).to_s + ' roku!'
#      end
#    else
#      p 'SCHO? GOVORY GOLOSNISHE, VNUCHKU!'
#    end
# end
while str != 'BYE BYE BYE'
  if str == str.upcase
    p 'NI, NIRAZU Z ' + rand(1930..1951).to_s + ' roku!'
  else
    p 'SCHO? GOVORY GOLOSNISHE, VNUCHKU!'
  end
  str = gets.chomp
end
p 'BYE, VNUCHKU!'
