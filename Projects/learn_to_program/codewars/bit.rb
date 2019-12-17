=begin
Write a function that takes an integer as input, and returns the number of bits
that are equal to one in the binary representation of that number.
You can guarantee that input is non-negative.
Example: The binary representation of 1234 is 10011010010, so the function
should return 5 in this case

=end

def numberOfBitsEqualToOne (int)
  arrayBits = []
  oneBit = 0
  while int >= 1
    bit = int % 2
    arrayBits.push bit
    int = int / 2
  end
  arrayBits.reverse
  arrayBits.each do |eachBit|
    if eachBit == 1
      oneBit += 1
    end
  end
  oneBit
end
# int = 1234
int = gets.chomp.to_i
puts (numberOfBitsEqualToOne int)
