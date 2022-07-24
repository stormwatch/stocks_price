def bad_best_profit(prices)
  raise("Priceless stock!") if prices.empty?

  maximum, index_of_maximum = prices.each_with_index.max
  minimum, index_of_minimum = prices.each_with_index.min
  return maximum - minimum if index_of_minimum <= index_of_maximum
  [bad_best_profit(prices[..index_of_maximum]),
   bad_best_profit(prices[index_of_maximum+1..])].max
end
