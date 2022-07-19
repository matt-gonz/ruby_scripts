def sorter(my_array)
  n = my_array.length - 1
  n.times{bubble_sort(my_array)}
  my_array
end

def bubble_sort(my_array)
  my_array.each_with_index do |value, index|
    is_sorted = false
    current_number = value
    if my_array[index+1] != nil
      next_number = my_array[index+1]
      if current_number > next_number
        my_array[index], my_array[index+1] = my_array[index+1], my_array[index]
      end
    else
      is_sorted = true
    end
  end
  my_array
end

my_array = [4,3,78,2,0,2]
puts sorter(my_array)