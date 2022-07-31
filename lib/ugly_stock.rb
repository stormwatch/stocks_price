def ugly_best_profit(prices)
  raise "Single-priced stock. Please, provide at least two prices." if prices.size == 1
  best_buy_price, best_sell_price = prices.combination(2).max_by {
    |buy_price, sell_price|
    raise "A stock price cannot be negative." if [buy_price, sell_price].any?(&:negative?)
    sell_price - buy_price }
  best_sell_price - best_buy_price
end
