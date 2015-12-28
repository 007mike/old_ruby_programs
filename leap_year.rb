#leap_year.rb - take in two numbers and show all leap years within that range

#function isLeapYear (year):
#    if ((year modulo 4 is 0) and (year modulo 100 is not 0))
#    or (year modulo 400 is 0)
#        then true
#   else false

def is_leap_year(year)
  if year <= 0
    puts "Number can't be 0 or less"
  elsif ((year%4 == 0) && (year%100 != 0) || (year%400 == 0))
    puts year
  end
end

puts "Enter the first year of the range:"
first_year = gets.chomp.to_i
puts "Enter the second year of the range:"
second_year = gets.chomp.to_i

years = Array(first_year..second_year)

years.each do |year|
  is_leap_year(year)
end


