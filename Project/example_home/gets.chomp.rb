puts "What is your name?"
STDOUT.flush
chompname = gets.chomp
puts "Again, what is your name?"
name = gets.chomp
puts "Hello, " + chompname
puts "Hi, " + name
puts 'But name = ' + name.inspect + ' and chompname = ' + chompname.inspect
