require_relative '../../src/music_album'
require_relative '../../src/author'
require_relative '../../src/label'
require_relative '../../src/genre'

module AddMusicAlbum
  def add_music_album
    puts 'Title: '
    title = gets.chomp
    puts 'Author first name: '
    author_first = gets.chomp
    puts 'Author last name: '
    author_last = gets.chomp
    puts 'Genre: '
    genre = gets.chomp
    puts 'Publish date: '
    publish_date = gets.chomp
    puts 'Label: '
    label = gets.chomp
    puts 'Label color: '
    label_color = gets.chomp
    puts 'is it on spotify? (y/n)'
    spotify = gets.chomp

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
      @labels << new_label
    end

    album = MusicAlbum.new(title, publish_date, on_spotify: spotify)
    album.author = new_author
    album.label = new_label
    album.genre = new_genre
    @albums << album
  end
end
