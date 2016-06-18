def combinations(array1, array2)
	#iterate through each item in array1 (map), pairing each item with each item in array2
	
	array1.map do |each_array1_item| 
		array2.map {|each_array2_item| each_array1_item + each_array2_item }
	end
end

my_array1 = ["on", "in", "dog"]
my_array2 = ["to", "rope", "dog"]
puts combinations(my_array1, my_array2)