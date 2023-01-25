require 'json'

module ReadBook
  def read_book
    return [] unless File.exist?('./json_files/books.json') && !File.empty?('./json_files/books.json')

    json = File.read('./json_files/books.json')
    parsed = JSON.parse(json)
    array = []
    parsed.each do |book|
      book_new = Book.new(book['title'], book['publisher'], book['cover_state'], book['publish_date'])
      book_new.author = Author.new(book['author'].split(', ')[1], book['author'].split(', ')[0])
      book_new.genre = Genre.new(book['genre'])
      book_new.label = Label.new(book['label'], book['label_color'])
      array << book_new
    end
    array
  end
end
