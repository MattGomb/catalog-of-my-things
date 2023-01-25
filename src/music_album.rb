require_relative 'items'

class MusicAlbum < Item
  attr_reader :publish_date, :on_spotify

  def initialize(title, publish_date, on_spotify: false)
    super(title, publish_date)
    @on_spotify = on_spotify
  end

  private

  def can_be_archived?
    super
    return true if @on_spotify

    false
  end
end
