def search_book_tag
  puts 'Search Book as per Tag: '
  puts 'Enter Tag Name: '
  tag = gets.chomp
  if tag.empty? || $books.include?(tag)
    puts "#{tag} does not belong to any book enter valid tag name"
  else
    $books.each do |id, book|
      if book['tags'] == tag
        puts "BookID\tName\tAuthor\tCopies\tTags"
        puts "#{id.to_s.ljust(7)} #{book['book_name'].to_s.ljust(7)} #{book['author_name'].to_s.ljust(7)} #{book['copies'].to_s.ljust(7)} #{book['tags']}"
      end
    end
  end
end
