class Pub

  attr_reader :name, :drink_collection
  attr_accessor :till

  def initialize(name, till, drink_collection)
    @name = name
    @till = till
    @drink_collection = drink_collection
  end

  def remove_drink_from_collection(drink_to_remove)
    for drink in @drink_collection
      if drink.name == drink_to_remove.name
        @drink_collection.delete(drink)
        break
      end
    end
  end

  def check_age?(customer_to_check)
    customer_to_check.age > 18
  end

  def refuse_service?(customer_to_check)
    customer_to_check.drunkenness > 5
  end




end
