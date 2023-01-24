require_relative 'items'
require 'uuid'

class Genre
  attr_accessor :name

  def initialize(name)
    @id = UUID.generate
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item
    item.genre = self
  end
end
