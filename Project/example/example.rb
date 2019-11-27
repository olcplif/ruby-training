# def h (name = "World")
#   puts "Hello, #{name.capitalize}!"
# end
# h ("ole")
# h

class Greeter
  def initialize(name = "World")
    @name = name.capitalize
  end
  def say_hi
    puts "Hi, #{@name}!"
  end
  def say_bye
    puts "Bye #{@name}, come back soon."
  end
end

g = Greeter.new("ole")
g.say_hi
g.say_bye
