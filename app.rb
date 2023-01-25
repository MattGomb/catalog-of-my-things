require_relative './modules/add_book'
require_relative './modules/list_books'
require_relative './modules/add_music_album'
require_relative './modules/list_music_album'
require_relative './modules/add_game'
require_relative './modules/list_authors'
require_relative './modules/list_genres'
require_relative './modules/list_labels'
require_relative './data/write_authors'
require_relative './data/read_authors'
require_relative './data/write_book'
require_relative './data/read_book'
require_relative './data/write_music_album'
require_relative './data/read_music_album'
require_relative './data/read_game'
require_relative './data/write_game'
require_relative './data/read_genres'
require_relative './data/write_genres'
require_relative './data/write_labels'
require_relative './data/read_labels'

class App
  include AddBook
  include ListBooks
  include WriteBook
  include ReadBook
  include ListGame
  include AddGame
  include WriteGame
  include ReadGame
  include AddMusicAlbum
  include ListMusicAlbums
  include WriteMusicAlbum
  include ReadMusicAlbum
  include ListAuthors
  include WriteAuthors
  include ReadAuthors
  include WriteGenres
  include ReadGenres
  include ListGenres
  include ListLabels
  include ReadLabels
  include WriteLabels

  def initialize
    @books = read_book
    @albums = read_music_album
    @games = read_game
    @authors = read_authors
    @labels = read_labels
    @genres = read_genres
  end

  def option_select
    selected_opt = gets.chomp
    case selected_opt
    when '1'
      list_books
    when '2'
      list_music_albums
    when '3'
      list_game
    when '4'
      list_genres
    when '5'
      list_labels
    when '6'
      list_authors
    when '7'
      add_book
    when '8'
      add_music_album
    when '9'
      add_game
    else
      write_book
      write_music_album
      write_game
      write_authors
      write_genres
      write_labels
      puts 'Thanks for using the app'
      exit
    end
  end
end
