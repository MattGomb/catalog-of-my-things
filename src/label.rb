require 'uuid'

class Label
  attr_accessor :title, :color, :items

  def initialize(title, color)
    @id = UUID.generate
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    item.label = self
    @items << item
  end
end
