class Customer

  attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

def buy_a_drink(drink, pub)
  @wallet -= drink.price
  pub.till += drink.price

  pub.remove_drink_from_collection(drink)
end




end
