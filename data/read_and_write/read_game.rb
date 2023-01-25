require 'json'

module ReadGame
  def read_game
    return [] unless File.exist?('./json_files/games.json') && !File.empty?('./json_files/games.json')

    json = File.read('./json_files/games.json')
    parsed = JSON.parse(json)
    array = []
    parsed.each do |game|
      game_new = Game.new(game['title'], game['publish_date'], game['last_played_at'])
      game_new.author = Author.new(game['author'].split(', ')[1], game['author'].split(', ')[0])
      game_new.genre = Genre.new(game['genre'])
      game_new.label = Label.new(game['label'], game['label_color'])
      array << game_new
    end
    array
  end
end
