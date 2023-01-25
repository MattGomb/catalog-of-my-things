require 'json'

module ReadMusicAlbum
  def read_music_album
    return [] unless File.exist?('./json_files/music_albums.json') && !File.empty?('./json_files/music_albums.json')

    json = File.read('./json_files/music_albums.json')
    parsed = JSON.parse(json)
    array = []
    parsed.each do |album|
      album_new = MusicAlbum.new(album['title'], album['publish_date'], on_spotify: album['on_spotify'])
      album_new.author = Author.new(album['author'].split(', ')[1], album['author'].split(', ')[0])
      album_new.genre = Genre.new(album['genre'])
      album_new.label = Label.new(album['label'], album['label_color'])
      array << album_new
    end
    array
  end
end
