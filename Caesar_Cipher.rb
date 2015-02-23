
def caesar_cipher(instring, shift)
	result = ""
	instring.each_byte do |c|		#convert char to ASCII code
		if c >= 65 && c <= 90		#if the character is in uppercase
			c = c - 65
			cipher = (c + shift) % 26
			result << (cipher + 65).chr

		elsif c >= 97 && c <= 122	#if the character is in lowercase
			c = c - 97
			cipher = (c + shift) % 26
			result << (cipher +97).chr

		else				#for other special characters, just print out
			result << c.chr
		end
	end
	puts result
end

print "Enter your string: "
string = gets.chomp
print "Enter your shift code: "
code = gets.chomp

caesar_cipher(string, code.to_i)




				
			




