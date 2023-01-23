require 'date'

class Item
  attr_writer :genre, :author, :source, :label

  def initialize(id, publish_date, archived: false)
    @id = id
    @publish_date = publish_date
    @archived = archived
  end
  
  def move_to_archive
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    return true if published_date < Date.today - 3652
    false
  end
end
