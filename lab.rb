
# declare hash representing the suite of a deck of cards, 
# with abbreviations for the keys and full suit names for the values
family = {c: "Clubs", d: "Diamonds", h: "Hearts", s: "Spades"}

# for each rank (1 through 13) in each suit (C, D, H, S) display the rank name 
# (e.g., "Ace", "Queen", "9" etc.) followed 
# by its full suit name ("Hearts", "Spades", etc.).

# loop through all the four suites of cards using hash
family.each do |code, name|

	#loop through all thirteen cards using the range method
	(1..13).each do |num|
		rank = case num
			when 1 then "Ace"
			when 11 then "Jack"
			when 12 then "Queen"
			when 13 then "King"
			else num
		end
		#print out the number followed by the suite
 		puts "#{rank} of #{name}"
	end

	#add a blank line for ease of reading
	print "\n"

#they think it's all over, it is now
end
