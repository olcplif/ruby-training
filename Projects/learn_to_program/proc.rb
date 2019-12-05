doYouLike = Proc.new do |aGoodThing|
  puts 'Я *дійсно* люблю ' + aGoodThing + '!'
end
doYouLike.call 'морозиво'
doYouLike.call 'каву'
