 
# data to be used in these exercises

months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
flintstones = ["Fred", "Wilma", "Barney", "Betty", "Dino"]

# 1. Write a method that accepts any array and always returns the first item
# Use the months array to test your method and that it returns "January"
# or the flintstones arrary to see if it returns "Fred"

def get_first_entry(array)
	array[0]	
end

puts get_first_entry(months)
puts get_first_entry(flintstones)

puts "\n--------------------" # line to distinguish exercise output

# 2. Write a method that accepts an array and then asked the user 
# which number in the array they want and test with your months array
# So when a user inputs 8, they should get "September"
# Remember to change your input to an integer

def get_month_name(array)
	puts "Choose a number from 0 to 12"
	input = $stdin.gets.chomp
	input = input.to_i

	result = case input
		when 1..12 then array[input]
		else "Not a valid month"
	end
end

puts get_month_name(months)
puts get_month_name(flintstones)

puts "\n--------------------" # line to distinguish exercise output

# 3. Write a method which accepts any number of parameters 
# representing months, by number 0 ("January") through 
# 11 ("December"), and displays the corresponding month names
# in a single line. 

def list_all_months(*a)
	a.each do |a|
		"#{a}"
	end
end

puts list_all_months(months)
puts list_all_months(flintstones)

def get_indexes_in_array(array, *indexes)
	indexes.each do |index|
		puts array[index]
	end
end

get_indexes_in_array(months,2,3,4,5)

