print 'Введіть свій рік народження: '
year = gets.chomp
print 'Введіть свій місяць народження: '
month = gets.chomp
print 'Введіть свій день народження: '
day = gets.chomp
now = Time.new
birthday = Time.mktime(year,month,day)
age = (now - birthday) / 31536000
hlop = 1
while hlop < age
  puts hlop.to_s + " HLOP!"
  hlop += 1
end
