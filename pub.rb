class Pub

attr_reader :name, :drink_collection
attr_accessor :till

def initialize(name, till, drink_collection)
  @name = name
  @till = till
  @drink_collection = drink_collection
end

def remove_drink_from_collection(drink_to_remove)
  # index_num = @drink_collection.index(drink_to_remove)
  for drink in @drink_collection
    if drink.name == drink_to_remove.name
      @drink_collection.delete(drink)
      break
    end

  end
end
  #@till += drink.price
  # i = 0
  # while i < @drink_collection.length
  #   if @drink_collection[i].name == drink_to_remove.name
  #     @drink_collection.delete_at(i)
  #     break
  #   i += 1
  #   end
  # end


end
