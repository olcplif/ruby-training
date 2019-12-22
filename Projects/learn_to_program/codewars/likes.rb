def likes(names)
  if names.length == 1
      p names[0] + ' likes this'
     elsif names.length == 2
       p names[0] + ' and ' + names[1] + ' like this'
     elsif names.length == 3
       p names[0] + ', ' + names[1] + ' and ' + names[2] + ' like this'
     elsif names.length >= 4
      p names[0] + ', ' + names[1] + ' and ' + (names.length-2).to_s + ' others like this'
     else
     p 'no one likes this'
    end

  #   case names.size
  # when 0
  #   "no one likes this"
  # when 1
  #   "#{names[0]} likes this"
  # when 2
  #   "#{names[0]} and #{names[1]} like this"
  # when 3
  #   "#{names[0]}, #{names[1]} and #{names[2]} like this"
  # else
  #   "#{names[0]}, #{names[1]} and #{names.size - 2} others like this"
  # end

#   case names.length
#   when 0
#     "no one likes this"
#   when 1
#     "%s likes this" % names
#   when 2
#     "%s and %s like this" % names
#   when 3
#     "%s, %s and %s like this" % names
#   else
#     "%s, %s and %d others like this" %
#       [names[0], names[1], names.length - 2]
#   end
end

likes([]) #, 'no one likes this')
likes(['Peter']) #, 'Peter likes this')
likes(['Jacob', 'Alex']) #, 'Jacob and Alex like this')
likes(['Max', 'John', 'Mark']) #, 'Max, John and Mark like this')
likes(['Alex', 'Jacob', 'Mark', 'Max']) #, 'Alex, Jacob and 2 others like this'
