def overlap(rect1, rect2)
	#sort each rect coordinates array to get the coordinate close to the center point first
	if rect1[0].reduce(:+) > rect1[1].reduce(:+)
		rect1[0], rect1[1] = rect1[1], rect1[0]
	end
	puts rect1 #test
	if rect2[0].reduce(:+) > rect2[1].reduce(:+)
		rect2[0], rect2[1] = rect2[1], rect2[0]
	end
	puts rect2

	#if both values of the more distant xy pair of rect1 are greater than those of the centermost xy pair of rect2, return true; else, false
	if (rect1[1][0] > rect2[0][0] && rect1[1][1] > rect2[0][1])
		true
	else
		false
	end
end

puts overlap( [ [0,0],[1,4] ], [ [1,1],[3,2] ] )