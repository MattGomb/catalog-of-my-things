module ListGames
  def list_games
    @games.each do |game|
      puts "
        - Title: #{game.title}
        Author: #{game.author.last_name}, #{game.author.first_name}
        Genre: #{game.genre.name}
        Label: #{game.label.title}
        Published: #{game.publish_date}
        Last Play: #{game.last_played_at}
        Multiplayer: #{game.multiplayer}"
    end
  end
end
