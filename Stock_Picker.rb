
def stock_picker(array)
	min = array[0]
	profit = 0
	max = 0
	
	for i in 0...(array.length - 1)
		if min < array[i+1]
			profit = array[i+1] - min
		else
			min = array[i+1]
		end
		if profit > max
			max = profit
			buy = array.index(min)
			sell = i+1
		end
	end

	puts "[#{buy}, #{sell}]"
end

stock_picker([17,3,6,9,15,8,6,1,10])

			

