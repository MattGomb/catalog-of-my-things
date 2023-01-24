class MusicAlbum < Item
  def initialize(on_spotify: false)
    super
    @on_spotify = on_spotify
  end

  def on_spotify?
    # Should this be like: "return true if @on_spotify", or just this keyword is enough..?
    @on_spotify
  end

  private

  def can_be_archived?
    super
    return true if @on_spotify

    false
  end
end
