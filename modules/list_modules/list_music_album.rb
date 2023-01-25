module ListMusicAlbums
  def list_music_albums
    @albums.each do |album|
      puts "
      - Title: #{album.title}
      Author: #{album.author.last_name}, #{album.author.first_name}
      Genre: #{album.genre.name}
      Published: #{album.publish_date}
      Is it on spotify? #{album.on_spotify}"
    end
  end
end
