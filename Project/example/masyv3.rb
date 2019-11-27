# require 'byebug'

# Bubble sort
def bubble_sort(a)
  (a.size - 1).times do |j|
    sorted = true
    0.upto(a.size - j - 2) do |i|
      if a[i] > a [i + 1]
        a[i], a[i + 1] = a[i + 1], a[i]
        sorted = false
      end
    end
    return a if sorted
  end

  return a
end

# a = generate_array(16)
# puts a.join(', ')
arr = [1, 8, 5, 6]
a = arr
# SORTING
puts "Bubble sort\nО(n^2)", bubble_sort(a.clone).inspect
