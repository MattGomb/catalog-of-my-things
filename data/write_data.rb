require 'json'
require_relative './read_and_write/write_authors'
require_relative './read_and_write/write_book'
require_relative './read_and_write/write_game'
require_relative './read_and_write/write_genres'
require_relative './read_and_write/write_labels'
require_relative './read_and_write/write_music_album'

module WriteData
  include WriteAuthors
  include WriteBook
  include WriteGame
  include WriteGenres
  include WriteLabels
  include WriteMusicAlbum

  def write_data
    write_authors
    write_book
    write_game
    write_genres
    write_labels
    write_music_album
  end
end