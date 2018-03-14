require('minitest/autorun')
require_relative('../food.rb')

class FoodTest < MiniTest::Test

  def setup()
    @food = Food.new("chips", 2, 5)
  end

  def test_get_food_name()
    assert_equal("chips", @food.name)
  end

  def test_get_food_price()
    assert_equal(2, @food.price)
  end

  def test_get_rejuvenation_level()
    assert_equal(5, @food.rejuvenation_level)
  end
 

end
