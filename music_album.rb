require_relative 'items'

class MusicAlbum < Item
  def initialize(on_spotify: false)
    super
    @on_spotify = on_spotify
  end

  private

  def can_be_archived?
    super
    return true if @on_spotify

    false
  end
end
