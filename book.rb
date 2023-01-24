require_relative 'items'

class Book < Item
  def initialize(publisher, cover_state, title, publish_date, archived: false)
    super(title, publish_date, archived: archived)
    @publisher = publisher
    @cover_state = cover_state
  end

  private

  def can_be_archived?
    return false if cover_state.downcase == 'bad'

    super
  end
end
