=begin
Given two integers a and b, which can be positive or negative, find the sum of
all the numbers between including them too and return it. If the two numbers are
equal return a or b.

Note: a and b are not ordered!
=end

def get_sum(a,b)
  sum = 0
  numbers = []
  if a == b
    sum = a
  elsif a < b
    while a <= b
      numbers.push (a)
      a += 1
    end
    number = numbers.length-1
    i = 0
    numbers.each.with_index do |num,i|
      if i <= number
        sum = sum + numbers[i]
        i += 1
      end
    end
  else
    while b <= a
      numbers.push (a)
      a -= 1
    end
    number = numbers.length-1
    i = 0
    numbers.each.with_index do |num,i| # num певно зайва, але не знаю як без неї
      if i <= number
        sum = sum + numbers[i]
        i += 1
      end
    end
  end
  # numbers.to_s
  sum
end

puts get_sum(1,2)
# describe "Example Tests" do
#   Test.assert_equals(get_sum(0,1),1)
#   Test.assert_equals(get_sum(0,-1),-1)
#   Test.assert_equals(get_sum(1,2),3)
#   Test.assert_equals(get_sum(5,-1),14)
# end
