require_relative '../book'

module ListBooks
  def list_book
    @books.each do |book|
      puts "- Name: #{book.title}, Author: #{book.author}, Genre: #{book.genre}, Label #{book.label}"
    end
  end
end
