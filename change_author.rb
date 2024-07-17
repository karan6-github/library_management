def change_author_name
  print "Change Author Name\n"
  print 'Enter Book ID: '
  id = gets.chomp
  if id.nil? || !$books.include?(id)
    puts "#{id} does not contain any book enter valid id"
  else
    puts "Author of - #{$books[id]['book_name']} is #{$books[id]['author_name']}"
    puts 'Enter New Author name: '
    $books[id]['author_name'] = gets.chomp
    puts "Author of #{$books[id]['book_name']} is changed to #{$books[id]['author_name']}"
  end
end
