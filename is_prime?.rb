def is_prime?(value)
	#take every number from 2 to value
	#divide value by that number
	#if value divided by that number leaves no remaineder, it is not prime
	value_array = Array (2..Math.sqrt(value).floor)
	value_array = value_array.select { |x| value % x == 0} #leave only factors of value
	if value_array.empty?
		return true
	else 
		false
	end
end

#test
puts is_prime?(6883)