def change_book_name
  print 'Change Book Name'
  print 'Enter Book ID: '
  id = gets.chomp
  if id.nil? || !$books.include?(id)
    puts "#{id} does not contain any book enter valid id"
  else
    puts "book - #{$books[id]['book_name']} has author #{$books[id]['author_name']}"
    puts 'Enter New Book name: '
    $books[id]['book_name'] = gets.chomp
    puts "Book - #{$books[id]['book_name']} of Author #{$books[id]['author_name']} has been changed"
  end
end
