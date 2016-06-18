def power(base, exponent)
	sum = 1
	exponent.times do 
		sum *= base
	end
	return sum
end

puts power(2,4)