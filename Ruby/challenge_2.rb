puts 'Please enter a filename:'
filename = gets.chomp

puts 'Enter the phrase to search for:'
phrase = gets.chomp

line_number = 0

File.open(filename, 'r').each do |line|
  line_number += 1
  if line.match(/#{phrase}/)
    puts "Line Number:#{line_number} -- #{line}"
  end
end