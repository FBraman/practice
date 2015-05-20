require 'pry'


def compress(string_arg)
	array = string_arg.split('')
	array_uniqueish = []
	frequency_hash = []
	array_uniqueish << array.shift
	until array.empty?
		if array_uniqueish[-1] == array[0]
			array_uniqueish << array.shift
		else
			frequency_hash << [array_uniqueish[-1], array_uniqueish.length]
			array_uniqueish.clear
			array_uniqueish << array.shift
		end
	end
	frequency_hash << [array_uniqueish[-1], array_uniqueish.length]
	compressed_string = []
	frequency_hash.each do |element0, element1|
		if element1 >= 2
			compressed_string << "#{element0}#{element1}"
		else
			compressed_string << "#{element0}"
		end
	end
	binding.pry
	output = compressed_string.join
	if output.length >= string_arg.length
		print string_arg
	else
		print output
	end
end

compress('aaaaaabb      cc')





