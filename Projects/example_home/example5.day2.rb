def getDayWeek(day)
  nameOfDay = '000'

  case(day)
  when '1'
    nameOfDay = 'It is Mondey'
  when '2'
    nameOfDay = 'It is Tuesday'
  when '3'
    nameOfDay = 'It is Wednesday'
  when '4'
    nameOfDay = 'It is Thursday'
  when '5'
    nameOfDay = 'It is Friday'
  when '6'
    nameOfDay = 'It is Saturday'
  when '7'
    nameOfDay = 'It is Sunday'
  else
    nameOfDay = 'Error!'
  end

  return nameOfDay
end
print 'Enter the day number: '
num = gets.chomp
puts getDayWeek(num)
