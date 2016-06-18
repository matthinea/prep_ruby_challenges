#code a program which outputs each number and which person said it
#first person says "1", the second says "2" and so on... but
#Whenever the number is divisible by 7, they switch directions. 
#So person 6 will say "6", person 7 will say "7", then person 6 again will say "8".
#Whenever the number is divisible by 11, they skip the next person for the following number. 
#For instance, if person 3 says "33", person 5 will say "34" instead (person 4 gets skipped).

friends = Array (1..10)
numbers = Array (1..100)
friend = 1
change_value = 1

numbers.each do |number|
	puts "Friend no. #{friend} said \"#{number}.\"" 
	if number % 7 == 0
		change_value *= -1
	end
	if number % 11 == 0
		friend += change_value
	end
	friend += change_value
	if friend < 1
		friend += 10
	elsif friend > 10
		friend -= 10
	end
end