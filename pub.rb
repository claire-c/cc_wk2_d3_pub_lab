class Pub

attr_reader :name, :drink_collection
attr_accessor :till

def initialize(name, till, drink_collection)
  @name = name
  @till = till
  @drink_collection = drink_collection
end

def remove_drink_from_collection(drink_to_remove)
  index_num = @drink_collection.index(drink_to_remove)
  @drink_collection.delete_at(index_num)
end

end
