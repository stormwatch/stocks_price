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

  def test_calculate_profit_of_single_price_should_raise_error
    price = [1]

    error = assert_raises(RuntimeError) { ugly_best_profit price }
    assert_equal "Single-priced stock. Please, provide at least two prices.", error.message
  end

  def test_calculate_profit_without_prices_should_raise_error
    no_price = []

    error = assert_raises(RuntimeError) { ugly_best_profit no_price}
    assert_equal "Priceless stock! Please, provide at least to prices", error.message
  end
end
