def bubble_sort(my_array)
  is_sorted = false
  my_array.each_with_index do |value, index|
    current_number = value
    if my_array[index+1] != nil
      next_number = my_array[index+1]
      if current_number > next_number
        my_array[index], my_array[index+1] = my_array[index+1], my_array[index]
      end
    end
  end
  puts my_array
end

my_array = [4,3,78,2,0,2]
bubble_sort(my_array)