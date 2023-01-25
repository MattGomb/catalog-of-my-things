require_relative './add_modules/add_book'
require_relative './add_modules/add_game'
require_relative './add_modules/add_music_album'

module AddModules
  include AddBook
  include AddGame
  include AddMusicAlbum

  def add_modules
    add_book
    add_game
    add_music_album
  end
end