def scramble(s1,s2)
  alphabet = ('a'..'z').to_a
    str1 = s1.split(//) # перетворення рядка в масив
    str2 = s2.split(//)
    str3 = []
    str4 = []
    i = 0
    str1.each do |symbol1|
      if alphabet.include?(symbol1) == true
        str3.push
      end
    end
    str2.each do |symbol2|
      if alphabet.include?(symbol2) == true
        str4.push
      end
    end
    l = str4.length
    str4.each do |symbol4|
      # if alphabet.include?(symbol) == true
        if str3.include?(symbol4) == true
          i += 1
        end
      # end
    end

    if i == l
      true
    else
      false
    end
end
p scramble('rkqodlw','world1') #true
p scramble('cedewaraaossoqqyt','codewars') #true
p scramble('katas','steak') #false
p scramble('scriptjava','javascript') #true
p scramble('scriptingjava','javascript') #true
