require 'json'

module WriteGame
  def write_game
    return if @games.empty?

    json = JSON.pretty_generate(@games.map do |game|
      {
        title: game.title,
        author: "#{game.author.last_name} #{game.author.first_name}",
        genre: game.genre.name,
        publish_date: game.publish_date,
        label: game.label.title,
        label_color: game.label_color,
        last_played_at: game.last_played_at,
        multiplayer: game.multiplayer
      }
    end)
    File.write('./json_files/game.json', json)

    puts 'Game saved successfully'
  end
end