def ugly_best_profit(prices)
  best_buy_price, best_sell_price = prices.combination(2).max_by { |buy_price, sell_price| sell_price - buy_price }
  best_sell_price - best_buy_price
end
