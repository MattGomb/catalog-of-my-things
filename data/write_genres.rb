require 'json'

module WriteGenres
  def write_genres
    return if @genres.empty?

    json = JSON.pretty_generate(@genres.map do |gen|
      {
        genre: gen.name
      }
    end)
    File.write('./json_files/genres.json', json)

    puts 'Genres saved to file successfully!'
  end
end
