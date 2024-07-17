def search_book_author
  puts 'Search Book as per Author: '
  puts 'Enter Author Name: '
  author = gets.chomp
  if author.empty? && $books.include?(author)
    puts "#{author} does no contain any book enter valid author name "
  else
    $books.each do |id, book|
      if book['author_name'] == author
        puts "BookID\tName\tAuthor\tCopies\ttags"
        puts "#{id.to_s.ljust(7)} #{book['book_name'].to_s.ljust(7)} #{book['author_name'].to_s.ljust(7)} #{book['copies'].to_s.ljust(7)} #{book['tags']}"
      end
    end
  end
end
