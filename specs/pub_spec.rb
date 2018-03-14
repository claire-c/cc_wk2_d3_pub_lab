require('minitest/autorun')
require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')

class PubTest < MiniTest::Test

  def setup()
    @customer = Customer.new("Matthew", 100, 25)

    @drink_collection = [
      Drink.new("Whisky", 3, 4),
      Drink.new("Beer", 5, 2),
      Drink.new("Wine", 6, 3),
      Drink.new("Gin", 4, 5)
      ]

    @pub = Pub.new("Pubby McPubFace", 500, @drink_collection)
  end

  def test_pub_name()
    assert_equal("Pubby McPubFace", @pub.name)
  end

  def test_return_till()
    assert_equal(500, @pub.till)
  end

  def test_return_drink_collection()
    assert_equal(@drink_collection, @pub.drink_collection)
  end

  def test_remove_drink_from_collection()
    drink = Drink.new("Beer", 5, 2)
    @pub.remove_drink_from_collection(drink)
    assert_equal(3, @pub.drink_collection.length)
  end

  def test_pub_checks_customer_age__over18()
    result = @pub.check_age?(@customer)
    assert_equal(true, result)
  end

  def test_pub_checks_customer_age__under18()
    customer = Customer.new("Matthew", 100, 16)
    result = @pub.check_age?(customer)
    assert_equal(false, result)
  end

end
