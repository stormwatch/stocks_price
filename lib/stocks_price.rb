def get_max_profit(an_array_of_numbers)
  raise("Priceless stock!") if an_array_of_numbers.empty?

  an_array_of_numbers.max - an_array_of_numbers.min
end
