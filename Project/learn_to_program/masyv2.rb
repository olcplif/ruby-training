# arr = (-2..4).to_a.shuffle
# arr.concat([2, 2, 3, 3])
arr = [7, 5, 2]
puts arr.to_s

period = arr.length - 1
n = 1

period.times do |_|
  max = arr[0]
  max_i = 0
  arr[0..-n].each.with_index do |x, i|
    if x > max
      max = x
      max_i = i
    end
  end
  p([max, max_i, arr.length-n])

  arr[max_i], arr[arr.length-n] = arr[arr.length-n], arr[max_i]
  n += 1
  puts arr.to_s
end

# Інший спосіб сортування https://pastebin.com/gXuVqHG3
# # require 'byebug'
#
# # Bubble sort
# def bubble_sort(a)
#   (a.size - 1).times do |j|
#     sorted = true
#     0.upto(a.size - j - 2) do |i|
#       if a[i] > a [i + 1]
#         a[i], a[i + 1] = a[i + 1], a[i]
#         sorted = false
#       end
#     end
#     return a if sorted
#   end
#
#   return a
# end
#
# arr = [7, 5, 2]
# a = arr
# # a =  generate_array(16)
# puts a.join(', ')
#
# # SORTING
# puts "Bubble sort\nО(n^2)", bubble_sort(a.clone).inspect
