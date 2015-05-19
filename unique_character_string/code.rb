def unique_characters?(string_arg)
	white_space_removed = string_arg.gsub(/\s/, '')
	string_array = white_space_removed.downcase.split('')
	counter = 0
	string_array.each do |x|
		string_array.each do |y|
			if x == y
				counter += 1
			end
		end
	end
	puts counter
	if counter == string_array.length
		true
	else
		false
	end
end
