dial_book = {
  'newyork' => '212',
  'newbrunswick' => '732',
  'edison' => '908',
  'plainsboro' => '609',
  'sanfrancisco' => '301',
  'miami' => '305',
  'paloalto' => '650',
  'evanston' => '847',
  'orlando' => '407',
  'lancaster' => '717'
}

# Get city names from the hash
def get_city_names(somehash)
  somehash.keys
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
  somehash["#{key}"]
end

# Execution flow
loop do
  print 'Do you want to look up an area code through a city name? (Y/N) | '
  if gets.chomp.downcase.eql?('y')

    puts 'Enter a city name from the ones provided below to get its area code'
    60.times { print '-' }
    print "\n"

    city_names = get_city_names(dial_book)
    puts city_names

    city = gets.chomp

    if city_names.include?(city.downcase)
      puts "The area code for #{city} is #{get_area_code(dial_book, city.downcase)}"
      print "\n"
    else
      puts "No area code was found for #{city}"
      next
    end

  else
    puts 'That would be it then, goodbye.'
    break
  end
end
