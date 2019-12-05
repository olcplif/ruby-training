File.foreach ( 'test.txt' ) do |line|
  puts line
  p line
  p line.chomp # отсекает символ новой строки
  p line.split # массив слов строки
end
