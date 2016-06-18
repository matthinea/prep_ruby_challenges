#create an array from 1 to the argument
#inject array with a multiplication block
#return sum

def factorial(x)
	new_array = Array (1..x)
	puts new_array
	new_array.inject (1) do |total, each|
		total *= each
	end
end

puts factorial(6)