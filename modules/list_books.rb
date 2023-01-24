require_relative '../book'

module ListBooks
  def list_books
    @books.each do |book|
      puts "- Name: #{book.title} * Author: #{book.author.last_name}, #{book.author.first_name} * Genre: #{book.genre} * Label #{book.label}"
    end
  end
end
