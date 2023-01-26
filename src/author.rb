require 'uuid'
require_relative 'items'

class Author
  attr_accessor :first_name, :last_name, :items

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @id = generate_id
    @items = []
  end

  def add_item(item)
    @items << item
    item.author = self
  end

  private

  def generate_id
    UUID.generate
  end
end
