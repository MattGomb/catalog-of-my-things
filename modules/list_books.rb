require_relative '../book'

module ListBooks
  def list_books
    @books.each do |book|
      puts "
      - Title: #{book.title}
      Author: #{book.author.last_name}, #{book.author.first_name}
      Genre: #{book.genre.name}
      Label: #{book.label.title}
      Publisher: #{book.publisher}
      Published: #{book.publish_date}"
    end
  end
end
