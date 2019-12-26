# if n / 1000 > 0
#      thousands = n / 1000
#      numeric.push thousands
#     elsif n / 100 > 0
#      hundreds = n / 100
#      numeric.push hundreds
#     elsif n / 10 > 0
#      tens = n / 10
#      numeric.push tens
#      units = n - (1000 * thousands + 100 * hundreds + 10 * tens)
#      numeric.push units
#     end
#      while product > 9
#       numeric.inject(1){ |product, digit| product * product }
#       multiplicativePersistence += 1
#      end

# num = 76546
# p numeric = num.to_s.chars.map { |digit| digit.to_i }
# # p numeric
# p numeric.inject(1){ |product, digit| product * digit }
# # p prod



def persistence(n)
    # numeric = []
    # multiplicativePersistence = -1
    # return 0 if (n >= 0) and (n < 9)
    # while numeric.length != 1
    #  numeric = n.to_s.chars.map { |digit| digit.to_i } # число в масив
    #  n = numeric.inject(1){ |product, digit| product * digit } # перемножування елементів масиву
    #  multiplicativePersistence += 1
    # end
    # return multiplicativePersistence

    k = 0
    while n > 9 do
      n = n.to_s.split(//).map{|x| x.to_i}.inject(:*) # виявляється можна навіть так...
      k += 1
    end
    k
end
p persistence(39)
p persistence(4)
p persistence(25)
p persistence(999)
