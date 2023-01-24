require_relative 'items'

class Game < Item
  attr_accessor :last_played_at, :multiplayer

  def initialize(id, publish_date, last_played_at, multiplayer: false, archived: false)
    super(id, publish_date, archived)
    @last_played_at = last_played_at
    @multiplayer = multiplayer
  end

  def can_be_archived?
    if last_played_at < Date.today - (365 * 2)
      true
    else
      false
    end
  end
end
