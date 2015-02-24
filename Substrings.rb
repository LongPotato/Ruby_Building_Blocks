
def substring(string, dict)
	string.downcase!
	result = {}
	dict.each do |key|
		array = string.scan(key)		#scan for the keyword in the string
		counter = array.length			#save the number of time keyword appears in array
		if counter != 0
			result[key] = counter
		end
	end
	result								#return the hash table
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts "Enter your text: "
text = gets.chomp
p substring(text, dictionary)


