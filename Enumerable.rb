module Enumerable
	def my_each
		for item in self
			yield(item)
		end
		return self if block_given?
	end

	def my_each_with_index
		for index in 0...self.length
			yield(self[index], index)
		end
		return self if block_given?
	end

	def my_select
		result = []
		self.my_each{|item| result << item if yield(item) == true}
		return result if block_given?
	end

	def my_all?
		if block_given?
			self.my_each{|item| return false if yield(item) == false}
		else
			return false
		end
		return true
	end

	def my_any?
		if block_given?
			self.my_each{|item| return true if yield(item) == true}
		else
			return true
		end
		return false
	end

	def my_none?
		if block_given?
			self.my_each{|item| return false if yield(item) == true}
		else
			return false
		end
		return true
	end

	def my_count(arg = nil)
		if block_given?
			self.my_select{|item| yield(item)}.size
		elsif arg		#if arg is not nill
			self.my_select{|item| item == arg}.size
		else
			self.size
		end		
	end

	def my_map(&proc)
		result = []
		if block_given?
			self.my_each{|item| result << proc.call(item)}
			return result
		end
	end

	def my_inject(initial = nil)
    	if initial.nil?
    		initial = self[0]
    		i = 1
    	else
    		i = 0
    	end
    	result = initial
    	while i < self.length
    		result = yield(result, self[i])
    		i += 1
    	end
    	return result if block_given?
  	end

end #end of module

def multiply_els(array)	#method to test my_inject
	array.my_inject{|x,y| x * y}
end





