 
# data to be used in these exercises

months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

# 1. the String class method .include? returns true 
# if the string contains sub-string or letter passed to the method
# write a loop which outputs months which do not begin with the letter "J"

months.each do |month|
	if not month.include? "J"
		puts month
	end
end

# puts month if not month.include? "J"

puts "\n--------------------" # line to distinguish exercise output

# 2. write a game which displays a month and asks for its 
# number position in the year (e.g. April = 4).
#
# Be aware that arrays begin with zero, not one. 
#
# if the user guesses wrong, end the game and display "Game Over.". 
# if the user enter "quit", then display "Bye!" before displaying "Game Over."
#
# remember the built in method $stdin.gets.chomp gets user input and 
# removes (chomps off) the trailing line return.
#
# there are different ways you could write this game. 
# start wondering why one might be better than another.

loop do
	random_month = months.sample
	puts "What number is #{random_month}?"

	input = $stdin.gets.chomp

	if input == "quit"
		puts "Bye!"
		puts "Game Over"
		break
	end

	# Turn my input into an integer
	input = input.to_i
	unless months[input - 1] == random_month
		puts "Game Over!"
		break
	end

end

grade = 82


choice = $stdin.gets.chomp 

result = case grade
	when 0..60 then "F"
	when 61..70 then "C"
	when 71..80 then "B"
	else "A"
end




