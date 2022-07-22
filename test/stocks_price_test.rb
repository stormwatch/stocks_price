require_relative "./test_helper"
require_relative "../lib/stocks_price"

class StockTest < Minitest::Test
  def test_get_max_profit_of_empty_array_should_raise_an_exception
    error = assert_raises(RuntimeError) { get_max_profit([]) }

    assert_equal("Priceless stock!", error.message)
  end

  def test_profit_of_a_one_element_array_is_zero
    stock_prices = [1]
    zero_profit = get_max_profit stock_prices

    assert_predicate zero_profit, :zero?
  end

  def test_profit_when_the_minimum_precedes_the_maximum_is_their_difference
    stock_prices = [1, 4, 16, 9]
    expected = 16 - 1

    assert_equal expected, get_max_profit(stock_prices)
  end
end
