def stock_picker(my_array)
  profit = 0
  min_price = my_array[0]
  min_index = 0
  days = []

  my_array.each_with_index do |price, index|
    # Logic for buying cheapest stock
    # Can't be the last day/entry
    if price < min_price && price != my_array[-1]
      min_price = price
      min_index = index
    end

    # Logic for selling highest priced stock
    # Can't be the first day/entry
    if price - min_price > profit && price != my_array[0]
      profit = price - min_price
      days = [min_index, index]
    end
  end

  days
end

my_array = [17,3,6,9,15,8,6,1,10]

p stock_picker(my_array)