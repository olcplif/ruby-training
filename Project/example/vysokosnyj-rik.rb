print 'Vvedit pochatkovyj rik: '
year1 = gets.chomp.to_i
print 'Vvedit kincevyj rik: '
year2 = gets.chomp.to_i
i = 0
while year1 <= year2
  if ((year1 % 4) == 0) and ((year1 % 100) != 0) or ((year1 % 400) == 0)
    p year1
    year1 += 1
    i += 1
  else
    year1 += 1
  end
end
p 'Vsyogo vysokosnyh rokiv - ' + i.to_s
