require 'uuid'
require_relative 'items'

class Author
  attr_accessor :first_name, :last_name, :id, :items

  def initialize(first_name, last_name, id)
    @first_name = firs_tname
    @last_name = last_name
    @id = generate_id
    @items = []
  end

  def add_item(item)
    @items << item
    item.author = self
  end

  def generate_id
    UUID.generate
  end
end
