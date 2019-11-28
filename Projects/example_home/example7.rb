# def h (name = "World")
#   puts "Hello, #{name.capitalize}!"
# end
# h ("sasha")
# h()

class Greeter
  def initialize (name = "World")
    @name = name
  end
  def say_hi
    puts "Hi, #{@name}!"
  end
  def say_bye
    puts "Bye #{@name}, come back soon!"
  end
end

g = Greeter.new("Ole")
puts g
