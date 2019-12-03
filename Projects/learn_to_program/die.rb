class Die #Гральна кисть
 def initialize
   roll
 end

 def roll
   @numberShowing = 1 + rand(6)
 end

 def showing
   @numberShowing
 end

 # def cheat
 #   print "Введіть бажану кість: "
 #   numberCheat = gets.chomp.to_i
 #   if (numberCheat > 0) and (numberCheat < 7)
 #     @numberShowing = numberCheat
 #   else
 #     "Введені дані не використовується!\n Повторіть спробу."
 #   end
 # end
 def cheat
     print "Введіть бажану кість: "
     @numberCheat = gets.chomp.to_i
     if (@numberCheat > 0) and (@numberCheat < 7)
       @numberShowing = @numberCheat
     else
       puts "Введені дані не можливо використати!\n Повторіть спробу."
     end
     # Ще хочу дописати цикл, коли програма не завершуватиметься, якщо ввести цифру відмінну від 1..6
 end

end

# puts Die.new.showing
die = Die.new
puts "Кисть, яка випала - " + die.cheat.to_s
