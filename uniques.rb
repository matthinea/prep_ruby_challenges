def no_dupes(array)
	duplicates = []
	i = 0
	while i < array.length
		item = array[i]
		if array.count(item) > 1
			array.delete(item)
			array.insert(i, item)
		end
		i += 1
	end
	array
end

my_array = [1, 2, 6, 4, "frog", 5, 6, 6, 6, 6, 9, "frog", "frog"]

puts no_dupes(my_array)

