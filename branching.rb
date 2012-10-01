 
# data to be used in these exercises

months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]


# 1. Ask the user to input the number 1, 2, 3, or 4, 
# then use "if" and related statements to display the months of 
# the corresponding quarter. If the user inputs an invalid value,
# let them know. Use ranges to retrieve sets of months.
# Remember that $stdin.gets.chomp retrieves a string value.

puts "Enter number 1,2,3 or 4"
choice = $stdin.gets.chomp

result = case choice.to_i
	when 1 then months[0..2]
	when 2 then months[3..5]
	when 3 then months[6..8]
	when 4 then months[9..11]

	else "Invalid"
end

puts result

extra_result = if choice == "1"
	puts months[0..2]
elsif choice == "2"
	puts months[3..5]
elsif choice == "3"
	puts months[6..8]
elsif choice == "4"
	puts months[9..11]
else "Invalid"
end

puts extra_result

puts "\n--------------------" # line to distinguish exercise output


# 2. Ask the user to input a degree value from 0 to 360. 
# Assuming 0/360 is North, use "case" and "when" to output whether 
# the degrees point Northeast, Southeast, Southwest, or Northwest. 
# Remember that $stdin.gets.chomp retrieves a string value.

puts "Enter degree value 0 to 360"
input = $stdin.gets.chomp

result = case input.to_i
	when 0..89 then "Northeast"
	when 90..179 then "Southeast"
	when 180..269 then "Southwest"
	when 270.. 360 then "Northwest"

	else "Uh oh, not a valid entry"
end

puts result
