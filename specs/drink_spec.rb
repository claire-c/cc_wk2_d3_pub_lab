require('minitest/autorun')
require_relative('../drink.rb')

class DrinkTest < MiniTest::Test

  def setup
    @drink = Drink.new("Beer", 5)
  end

  def test_get_drink_name()
    assert_equal("Beer", @drink.name)
  end

  def test_get_drink_price()
    assert_equal(5, @drink.price)
  end

















end
