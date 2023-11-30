# simple branching

puts 'How are you feeling today?'
mood = gets.chomp.downcase

if mood == 'happy'
  puts 'Hooray, I am glad!'
elsif mood == 'sad'
  puts 'Aww, I am sorry to hear that!'
else
  puts "Interesting, I don't know what to do with this information..."
end
