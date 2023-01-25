require_relative './list_modules/list_authors'
require_relative './list_modules/list_books'
require_relative './list_modules/list_game'
require_relative './list_modules/list_genres'
require_relative './list_modules/list_labels'
require_relative './list_modules/list_music_album'

module ListModules
  include ListAuthors
  include ListBooks
  include ListGames
  include ListGenres
  include ListLabels
  include ListMusicAlbums

  def list_modules
    list_authors
    list_books
    list_games
    list_genres
    list_labels
    list_music_albums
  end
end