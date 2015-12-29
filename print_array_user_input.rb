# print_array_user_input.rb 
# accept user input until enter alone is pressed. Then print the values sorted to the screen.

words = []
word = 'no'

puts "Type words followed by [enter]. [enter] alone to exit:"

while word != ''
  word = gets.chomp.to_s
  words.push(word)
end

words.pop
words.sort!

puts "Thank you. View your list of words sorted below:"

words.each do |word|
  puts word
end



