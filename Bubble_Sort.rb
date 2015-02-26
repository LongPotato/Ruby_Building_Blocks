
#bubble_sort method, receive: an array
def bubble_sort(array)
    finish = false

	while !finish		
	    finish = true
		(0...(array.length - 1)).each do |i|
			if array[i] > array[i + 1]
				array[i], array[i + 1] = array[i+1], array[i]	#swap the 2 values
				finish = false									#swap happened, need to iterate again to check the array
			end
		end
	end

	p array														#print out the sorted array													
end

bubble_sort([4,3,78,2,0,2])


#bubble_sort_by method, receive: a block
def bubble_sort_by(array)
	finish = false

	while !finish
		finish = true							
		(0...(array.length - 1)).each do |i|
			if yield(array[i], array[i + 1]) < 0				#check the return result of the block for negative
				array[i], array[i + 1] = array[i+1], array[i]
				finish = false
			end
		end
	end
	
	p array
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
	right.length - left.length
end