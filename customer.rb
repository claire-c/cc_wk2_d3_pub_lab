class Customer

  attr_reader :name, :wallet, :age
  attr_accessor :drunkenness

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness = 0
  end

def buy_a_drink(drink, pub)
  @wallet -= drink.price
  pub.till += drink.price
  pub.remove_drink_from_collection(drink)
end




end
