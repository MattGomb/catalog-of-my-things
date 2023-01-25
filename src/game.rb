require_relative 'items'

class Game < Item
  attr_accessor :last_played_at, :multiplayer, :publish_date

  def initialize(title, publish_date, last_played_at, multiplayer: false, archived: false)
    super(title, publish_date, archived: archived)
    @last_played_at = last_played_at 
    @multiplayer = multiplayer
  end

  private
  
  def can_be_archived?
    return true if super && Date.strptime(last_played_at, '%d/%m/%Y') < Date.today - (365 * 2)

    false
  end
end
