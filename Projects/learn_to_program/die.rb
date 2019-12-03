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
   numberCheat = gets.chomp.to_i
   while (numberCheat != 1) #or (numberCheat != 2) or (numberCheat != 3) or (numberCheat != 4) or (numberCheat != 5) or (numberCheat != 6)
     if (numberCheat > 0) and (numberCheat < 7)
       @numberShowing = numberCheat
     else
       "Введені дані не використовується!\n Повторіть спробу."
     end
   end
 end

end

# puts Die.new.showing
die = Die.new
puts die.cheat
