require_relative './modules/add_book'
require_relative './modules/list_books'
require_relative './data/write_book'
require_relative './data/read_book'

class App
  include AddBook
  include ListBooks
  include WriteBook
  include ReadBook

  def initialize
    @books = read_book
    @albums = []
    @games = []
    @authors = []
    @labels = []
    @genres = []
  end

  def option_select
    selected_opt = gets.chomp
    case selected_opt
    when '1'
      list_books
    when '2'
      puts 'This will list the music albums'
    when '3'
      puts 'This will list the games'
    when '4'
      puts 'This will list the genres'
    when '5'
      puts 'This will list the labels'
    when '6'
      puts 'This will list the authors'
    when '7'
      add_book
    when '8'
      puts 'This will add a music album'
    when '9'
      puts 'This will add a game'
    else
      write_book
      puts 'Thanks for using the app'
      exit
    end
  end
end
