require 'json'

module WriteBook
  def write_book
    return if @books.empty?

    json = JSON.pretty_generate(@books.map do |book|
      {
        title: book.title,
        author: "#{book.author.last_name}, #{book.author.first_name}",
        genre: book.genre.name,
        publisher: book.publisher,
        cover_state: book.cover_state,
        publish_date: book.publish_date,
        label: book.label.title,
        label_color: book.label.color
      }
    end)
    File.write('./json_files/books.json', json)

    puts 'Books saved to file successfully!'
  end  
end