def add_book
  puts 'Add Book'
  puts 'Enter Book Name: '
  book_name = gets.chomp
  while book_name.empty?
    puts 'name cannot be empty'
    puts 'enter Book name: '
    book_name = gets.chomp
  end
  puts 'Enter Author Name: '
  auth_name = gets.chomp
  while auth_name.empty?
    puts 'name cannot be empty'
    puts 'enter author name: '
    auth_name = gets.chomp
  end
  puts 'Enter Book Id'
  id = gets.chomp
  if $books.include?(id)
    puts 'ID already exist'
    return
  end
  puts 'Enter Number of copies: '
  copies = gets.chomp.to_i
  puts 'Enter tags for Searching: '
  tags = gets.chomp
  $books[id] = {'book_name' => book_name, 'author_name' => auth_name, 'copies' => copies, 'tags' => tags}
  puts "Book - #{book_name} of Author #{auth_name} has been added in Library"
end

def list_books
  if $books.empty?
    puts 'your list is empty'
    return
  end
  puts "BookID\tName\tAuthor\tCopies"
  $books.each do |id, book|
    puts "#{id.to_s.ljust(7)} #{book['book_name'].to_s.ljust(7)} #{book['author_name'].to_s.ljust(7)} #{book['copies'].to_s.ljust(7)}"
  end
end
