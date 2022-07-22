def get_max_profit(numbers)
  raise("Priceless stock!") if numbers.empty?

  numbers.max - numbers.min
end
