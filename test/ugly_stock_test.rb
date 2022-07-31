require_relative "./test_helper"
require_relative "../lib/ugly_stock"

class UglyStockTest < Minitest::Test
  def test_calculates_zero_profit_correctly
    prices = [1, 1]

    assert_predicate ugly_best_profit(prices), :zero?
  end

  def test_calculates_single_profit_correctly
    prices = [4, 1]

    assert_equal 1 - 4 , ugly_best_profit(prices)
  end

  def test_calculates_best_of_many_profits_correctly
    prices = [16, 25, 4, 9, 1]

    assert_equal 25 - 16, ugly_best_profit(prices)
  end

  def test_calculate_profit_with_negative_prices_should_raise_error
    prices = [-1, -4]

    error = assert_raises(RuntimeError) { ugly_best_profit prices }
    assert_equal "A stock price cannot be negative.", error.message
  end
end
