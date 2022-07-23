def get_max_profit(numbers)
  raise("Priceless stock!") if numbers.empty?

  maximum, index_of_maximum = numbers.each_with_index.max
  minimum, index_of_minimum = numbers.each_with_index.min
  return maximum - minimum if index_of_minimum <= index_of_maximum
  [get_max_profit(numbers[..index_of_maximum]),
   get_max_profit(numbers[index_of_maximum+1..])].max
end
