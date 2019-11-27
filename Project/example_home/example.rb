age = 33
puts (age)
age = 34
puts (age)
name = 'My name is Oleksandr'
puts (name)
line = 13.1
puts (line)
person_has_car = false
puts (person_has_car)
none = nil
puts (none)
word1 = "Text\n new"
word2 = "   line \"HeLLo\""
puts (word1.upcase() + word2.downcase())
text1 = "  Bagato probiliv    "
puts (text1.strip())
puts (text1.length())
puts (text1.include? "agA")
puts ("\nМатематичні операції")
x = 5
y = 11
res = x + y
puts (x.to_s + " + " + y.to_s + " = " + res.to_s)
res = x - y
puts (x.to_s + " - " + y.to_s + " = " + res.to_s)
res = x * y
puts (x.to_s + " * " + y.to_s + " = " + res.to_s)
res = x / y
puts (x.to_s + " / " + y.to_s + " = " + res.to_s)
res = x ** y
puts (x.to_s + " ^ " + y.to_s + " = " + res.to_s)
res = y % x
puts ("Залишок від ділення: " + y.to_s + " % " + x.to_s + " = " + res.to_s)
num = -15.67
print ("По модулю: ")
puts (num.abs())
print ("Заокруглення: ")
puts (num.round())
print ("Квадратний корінь 122 = ")
puts (Math.sqrt(122))
print ("Логарифм (122) = ")
puts (Math.log(12))
