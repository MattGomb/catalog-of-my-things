require_relative './modules/add_modules'
require_relative './modules/list_modules'
require_relative './data/read_data'
require_relative './data/write_data'

class App
  include AddModules
  include ListModules
  include ReadData
  include WriteData

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
      list_games
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
      write_data
      puts 'Thanks for using the app'
      exit
    end
  end
end
