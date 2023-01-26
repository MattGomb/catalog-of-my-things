require 'json'

module WriteMusicAlbum
  def write_music_album
    return if @albums.empty?

    json = JSON.pretty_generate(@albums.map do |album|
      {
        title: album.title,
        author: "#{album.author.last_name}, #{album.author.first_name}",
        genre: album.genre.name,
        publish_date: album.publish_date,
        label: album.label.title,
        label_color: album.label.color,
        on_spotify: album.on_spotify
      }
    end)
    File.write('./json_files/music_albums.json', json)

    puts 'Music albums saved to file successfully!'
  end
end
