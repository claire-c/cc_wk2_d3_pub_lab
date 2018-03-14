require('minitest/autorun')
require_relative('../pub.rb')
require_relative('../drink.rb')

class PubTest < MiniTest::Test

  def setup()
    @drink_collection = [
      Drink.new("Beer", 3),
      Drink.new("Beer", 5),
      Drink.new("Wine", 6),
      Drink.new("Gin", 4)
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
    drink = Drink.new("Beer", 5)
    @pub.remove_drink_from_collection(drink)
    assert_equal(3, @pub.drink_collection.length)
  end


end
