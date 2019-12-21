=begin
Write a function that accepts an array of 10 integers (between 0 and 9),
that returns a string of those numbers in the form of a phone number.
=end

def createPhoneNumber(numbers)
  # phoneNumber = numbers
  # p '(' + phoneNumber[0].to_s + phoneNumber[1].to_s + phoneNumber[2].to_s + ')' + ' ' + phoneNumber[3].to_s + phoneNumber[4].to_s + phoneNumber[5].to_s + '-' + phoneNumber[6].to_s + phoneNumber[7].to_s + phoneNumber[8].to_s + phoneNumber[9].to_s
  p "(%d%d%d) %d%d%d-%d%d%d%d" % numbers #Wow, it could even be that way
end

createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => "(123) 456-7890"
