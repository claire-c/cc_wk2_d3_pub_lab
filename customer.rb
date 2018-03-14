class Customer

  attr_reader :name, :wallet, :age
  attr_accessor :drunk

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
    @drunk = 0
  end

  def afford_drink?(drink)
    @wallet > drink.price
  end

  def buy_a_drink(drink, pub)
    if afford_drink?(drink) == true
      @wallet -= drink.price
      pub.till += drink.price
      pub.remove_drink_from_collection(drink)
    end
  end

  def gets_more_drunk(drink)
    @drunk += drink.alcohol_level
  end

  def buys_food(food_to_buy)
    @wallet -= food_to_buy.price
    @drunk -= food_to_buy.rejuvenation_level
  end

  #How to I write this function to only go to 0 on my customer. Is there a way I can do this? Like set a default where it will only rejuvenate to 0?

end
