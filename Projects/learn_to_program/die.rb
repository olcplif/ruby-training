class Die #Игральная кость
 def initialize
   roll
 end

 def roll
   @numberShowing = 1 + rand(6)
 end

 def showing
   @numberShowing
 end

 def cheat
   print "Введіть бажану кість: "
   numberCheat = gets.chomp.to_i
   if (numberCheat > 0) and (numberCheat < 7)
     @numberShowing = numberCheat
   else
     puts "Введені дані не використовується!\n Повторіть спробу."
   end
 end
end

# puts Die.new.showing
die = Die.new
puts die.cheat
