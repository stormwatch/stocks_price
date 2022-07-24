require_relative "./test_helper"
require_relative "../lib/bad_stock"

class BadStockTest < Minitest::Test
  def test_get_max_profit_of_empty_array_should_raise_an_exception
    error = assert_raises(RuntimeError) { bad_best_profit([]) }

    assert_equal("Priceless stock!", error.message)
  end

  def test_profit_of_a_one_element_array_is_zero
    stock_prices = [1]
    zero_profit = bad_best_profit stock_prices

    assert_predicate zero_profit, :zero?
  end

  def test_profit_when_the_minimum_precedes_the_maximum_is_their_difference
    stock_prices = [1, 4, 16, 9]
    expected = 16 - 1

    assert_equal expected, bad_best_profit(stock_prices)
  end

  def test_ignore_maxima_that_precedes_the_minimum
    stock_prices = [9, 1, 4]
    expected = 4 - 1

    assert_equal expected, bad_best_profit(stock_prices)
  end

  def test_picks_the_largest_profit
    stock_prices = [ 9, 36, 4, 25, 1, 16]
    expected = 36 - 9

    assert_equal expected, bad_best_profit(stock_prices)
  end
end
