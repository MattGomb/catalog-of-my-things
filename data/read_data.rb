require 'json'
require_relative './read_and_write/read_authors'
require_relative './read_and_write/read_book'
require_relative './read_and_write/read_game'
require_relative './read_and_write/read_genres'
require_relative './read_and_write/read_labels'
require_relative './read_and_write/read_music_album'

module ReadData
  include ReadAuthors
  include ReadBook
  include ReadGame
  include ReadGenres
  include ReadLabels
  include ReadMusicAlbum

  def read_data
    read_authors
    read_book
    read_game
    read_genres
    read_labels
    read_music_album
  end
end