# create_file_and_write.rb


puts "Enter a .txt file name to create [eg. bill.txt]: "
filename = gets.chomp.to_s


# check if it exists and ask what to do
response = ''

if File.exists?(filename) 
  puts "#{filename} exists already. Overwrite? [y/n]"
  response = gets.chomp.to_s
  while response != 'y'
    if response == 'n'
      puts "good bye"
      exit
    else 
      puts "must be [y or n]"
      response = gets.chomp.to_s
    end
  end

end


puts "Enter text followed by [enter]. Exit by typing [enter] only:"
input = "init"
lines = []
x=0

# get input lines from user until they only type enter
while input != ''
  input = gets.chomp.to_s
  lines[x] = input
  x +=1
end

# remove the last blank line of user input
lines.pop

# line counter initialization
y = 0

File.open(filename, 'w+') do |file|
  lines.each do |line|
    file.write("#{line}\n")
    y +=1
  end
end

#File.close(filename)

puts "-#{y}- lines were written to file. #{filename}"
puts "Type \"cat #{filename}\" to view contents from command line..."