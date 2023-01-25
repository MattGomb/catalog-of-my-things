require 'json'

module ReadGenres
  def read_genres
    return [] unless File.exist?('./json_files/genres.json') && !File.empty?('./json_files/genres.json')

    json = File.read('./json_files/genres.json')
    parsed = JSON.parse(json)
    array = []
    parsed.each do |gen|
      genre_new = Genre.new(gen['genre'])
      array << genre_new
    end
    array
  end
end
