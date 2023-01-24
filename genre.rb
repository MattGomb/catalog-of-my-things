require_relative 'items'

class Genre < Item
  def initialize(id, name)
    super(id)
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item
    item.genre = self
  end
end
