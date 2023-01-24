require_relative '../book'

module ListBooks
  def list_books
    @books.each do |book|
      puts "- Title: #{book.title}\n Author: #{book.author.last_name}, #{book.author.first_name}\n Genre: #{book.genre.name}\n Label #{book.label.title}"
      puts
    end
  end
end
