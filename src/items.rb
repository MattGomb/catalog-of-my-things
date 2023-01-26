require 'date'
require 'uuid'

class Item
  attr_accessor :genre, :author, :label
  attr_reader :title

  def initialize(title, publish_date, archived: false)
    @title = title
    @id = UUID.generate
    @publish_date = publish_date
    @archived = archived
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    return true if Date.strptime(publish_date, '%d/%m/%Y') < Date.today - 3652

    false
  end
end
