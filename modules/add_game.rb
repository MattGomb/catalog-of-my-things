require_relative '../game'
require_relative '../author'
require_relative '../label'
require_relative '../genre'

module AddGame
  def add_game
    puts 'Title'
    title = gets.chomp
    puts 'Author first name: '
    author_first = gets.chomp
    puts 'Author last name: '
    author_last = gets.chomp
    puts 'Genre: '
    genre = gets.chomp
    puts 'Publish date: '
    publish_date = gets.chomp
    puts 'Last Played: '
    last_played_at = gets.chomp
    puts 'Label: '
    label = gets.chomp
    puts 'Label color: '
    label_color = gets.chomp

    new_label = @labels.find { |lab| lab.title == label }
    new_genre = @genres.find { |gen| gen.name == genre }
    new_author = @authors.find { |auth| auth.first_name == author_first && auth.last_name == author_last }

    unless new_author
        new_author = Author.new(author_first, author_last)
        @authors << new_author
      end
      unless new_genre
        new_genre = Genre.new(genre)
        @genres << new_genre
      end
      unless new_label
        new_label = Label.new(label, label_color)
        @genres << new_genre
      end

      game = Game.new(title, publish_date ,last_played_at, false)
      game.author = new_author
      game.label = new_label
      game.genre = new_genre
      @game << game
    end
end
