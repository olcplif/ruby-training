puts 'Vitayu na uroci anglijskoyi!'
puts 'Mene zvut\' pani Oksana. A tvoye imya...?'
name = gets.chomp
if name == name.capitalize
  puts 'Chudovo ' + name + '! Siday.'
else
  puts name + '? Ty napevno mav na uvazi: ' + name.capitalize + '? Chy ne tak?'
  puts 'Ty scho navit ne znaesh yak pyshetsya tvoe im\'ya?'
  reply = gets.chomp
  if reply == 'tak'
    puts 'Ok, siday.'
  else
    puts 'Vyjshov z klasu!'
  end
end
