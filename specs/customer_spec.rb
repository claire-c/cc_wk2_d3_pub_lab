require('minitest/autorun')
require_relative('../customer.rb')
require_relative('../drink.rb')
require_relative('../pub.rb')
require_relative('../food.rb')


class CustomerTest < MiniTest::Test

  def setup
    @drink = Drink.new("Beer", 5, 6)

    @customer = Customer.new("Matthew", 100, 25)

    @drink_collection = [
      Drink.new("Whisky", 3, 4),
      Drink.new("Beer", 5, 2),
      Drink.new("Wine", 6, 3),
      Drink.new("Gin", 4, 8)
      ]

    @food = Food.new("chips", 2, 5)

    @pub = Pub.new("Pubby McPubFace", 500, @drink_collection)

  end

  def test_customer_name()
    assert_equal("Matthew", @customer.name)
  end

  def test_customer_wallet_contents()
    assert_equal(100, @customer.wallet)
  end

  def test_customer_age()
    assert_equal(25, @customer.age)
  end

  def test_customer_drunk()
    assert_equal(0, @customer.drunk)
  end

  def test_buy_a_drink()
    @customer.buy_a_drink(@drink, @pub)
    assert_equal(95, @customer.wallet)
    assert_equal(505, @pub.till)
    assert_equal(3, @pub.drink_collection.length)
  end

  def test_customer_gets_more_drunk()
    result = @customer.gets_more_drunk(@drink)
    assert_equal(6, result)
  end

  def test_drunk_customer_buys_food()
    drink = Drink.new("Gin", 4, 8)
    @customer.gets_more_drunk(drink)
    @customer.buys_food(@food)
    assert_equal(3, @customer.drunk) #drunkeness level
    assert_equal(98, @customer.wallet) #money in wallet
  end

  def test_sober_customer_buys_food()
    @customer.buys_food(@food)
    assert_equal(-5, @customer.drunk)
  end


end
