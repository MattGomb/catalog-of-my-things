module ListGenres
  def list_genres
    @genres.each_with_index do |genre, index|
      puts " Genre #{index + 1}:
          - #{genre.name}"
    end
  end
end
