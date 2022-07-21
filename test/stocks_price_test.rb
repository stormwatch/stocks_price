require_relative "./test_helper"
require_relative "../lib/stocks_price"

class StockTest < Minitest::Test
  def test_get_max_profit_of_empty_array_should_raise_an_exception
    error = assert_raises(RuntimeError) { get_max_profit([]) }
    assert_equal("Priceless stock!", error.message)
  end

  def test_profit_of_a_one_element_array_is_zero
    stock_prices = [1]
    max_profit = get_max_profit stock_prices
    assert_predicate max_profit, :zero?
  end
end
