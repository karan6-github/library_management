require_relative 'add_book'
require_relative 'change_book'
require_relative 'change_author'
require_relative 'search_author'
require_relative 'search_tag'

$books = {}

def run
  loop do
    display_menu
    choice = gets.chomp.to_i
    case choice
    when 1
      add_book
    when 2
      list_books
    when 3
      change_book_name
    when 4
      change_author_name
    when 5
      search_book_author
    when 6
      search_book_tag
    when 7
      puts 'THANKYOU'
      break
    else
      puts 'Invalid choice Enter choice between 1-7'
    end
  end
end

def display_menu
  puts '********Welcome to the library***************'
  puts '1) Add Book'
  puts '2) List Books'
  puts '3) Change Book Name'
  puts '4) Change Author Name'
  puts '5) Search book as per author'
  puts '6) Search book as per tag'
  puts '7) Quit'
  puts '**********************************************'
  puts 'Enter your choice: '
end

run
