require_relative 'items'

class Game < Item
  attr_accessor :last_played_at, :multiplayer, :publish_date

  def initialize(title, publish_date, last_played_at, multiplayer: false, archived: false)
    super(title, publish_date, archived: archived)
    @last_played_at = last_played_at
    @multiplayer = multiplayer
  end

  def can_be_archived?
    return true if super && last_played_at < Date.today - (365 * 2)

    false
  end
end
