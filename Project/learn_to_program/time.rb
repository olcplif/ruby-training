# print "Vvedit\' Im\'ya Pershoi lyudyny: "
# name1 = gets.chomp
# print "Vvedit\' Datu narodzhennya Pershoi lyudyny: "
# date1 = gets.chomp
# print "Vvedit\' Im\'ya Drugoi lyudyny: "
# name2 = gets.chomp
# print "Vvedit\' Datu narodzhennya Pershoi lyudyny: "
# date2 = gets.chomp
# my_birthday = Time.mktime(date1)
# puts "My birthday: " + my_birthday.to_s
# ole_birthday = Time.mktime(date2)
# puts "Ole birthday: " + ole_birthday.to_s
my_birthday = Time.mktime(1986,02,26)
ole_birthday = Time.mktime(1985,03,05)
if my_birthday == ole_birthday
  puts "My narodylysya v odyn den\'"
elsif my_birthday < ole_birthday
  day = (ole_birthday - my_birthday) / 86400
  if day >= 365
    year = (day / 365).to_i
    days = (day - (365 * year.to_i)).to_i
    puts "Ya starshyj na " + year.to_s + " roky i " + days.to_s + " dniv"
  else
    puts "Ya starshyj na " + day.to_s + " dniv"
  end
else
  day = (my_birthday - ole_birthday) / 86400
  puts "Ole starsha na " + day.to_s + " dniv"
end
puts " "
# sec = my_birthday - ole_birthday
# puts "Secundy: " + sec.to_s
# minut = sec / 60
# puts "Hvylyn: " + minut.to_s
# hour = minut / 60
# puts "Godyn: " + hour.to_s
# day = hour / 24
# puts "Dniv: " + day.to_s
