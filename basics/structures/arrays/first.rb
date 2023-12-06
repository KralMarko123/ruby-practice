a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
print a
print "\n"

b = 'a'..'z'
b = b.to_a
b.shuffle!

20.times { print '-' }
print "\n"

puts a.first
puts a.last
a.push(10)
puts a.last
puts a.empty?
puts a.pop

c = %w[hi my name is marko and i am 24 years old]
puts c

c.each { |e| print e + ' ' }
print "\n"

c.select! do |e|
  true if Integer(e)
  rescue StandardError
    false
end

puts c
