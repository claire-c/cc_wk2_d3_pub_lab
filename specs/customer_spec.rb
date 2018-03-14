require('minitest/autorun')
require_relative('../customer.rb')

class CustomerTest < MiniTest::Test

  def setup
    @customer = Customer.new("Matthew", 100)
  end

  def test_customer_name()
    assert_equal("Matthew", @customer.name)
  end

  def test_customer_wallet_contents()
    assert_equal(100, @customer.wallet)
  end






end
