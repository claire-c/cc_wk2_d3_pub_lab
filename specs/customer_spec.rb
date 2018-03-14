require('minitest/autorun')
require_relative('../customer.rb')
require_relative('../drink.rb')
require_relative('../pub.rb')

class CustomerTest < MiniTest::Test

  def setup
    @drink = Drink.new("Beer", 5)
    @customer = Customer.new("Matthew", 100)
    @drink_collection = [
      Drink.new("Whisky", 3),
      Drink.new("Beer", 5),
      Drink.new("Wine", 6),
      Drink.new("Gin", 4)
      ]

    @pub = Pub.new("Pubby McPubFace", 500, @drink_collection)

  end

  def test_customer_name()
    assert_equal("Matthew", @customer.name)
  end

  def test_customer_wallet_contents()
    assert_equal(100, @customer.wallet)
  end

  def test_buy_a_drink()
    @customer.buy_a_drink(@drink, @pub)
    assert_equal(95, @customer.wallet)
    assert_equal(505, @pub.till)
    assert_equal(3, @pub.drink_collection.length)
  end




end
