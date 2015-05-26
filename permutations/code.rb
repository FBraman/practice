def permutations_sorted(string1, string2)
	sorted_string1 = []
	sorted_string2 = []
	array_1 = string1.split("")
	array_2 = string2.split("")
	until array_1.empty?
		x = array_1.max
		array_1.each do |y|
			if y == x
				sorted_string1 << x
				array_1.delete(array_1.max)
			end
		end
	end
	until array_2.empty?
		x = array_2.max
		array_2.each do |y|
			if y == x
				sorted_string2 << x
				array_2.delete(array_2.max)
			end
		end
	end
	if sorted_string1 == sorted_string2
		true
	else 
		false
	end
end

permutations_sorted("aca;bbc", "c;cbaba")



# def sort(array)
# 	if array.empty?
# 		return array
# 	end
# 	middle = array.pop
# 	more = array.select{|x| x >= middle}
# 	less = array.select{|x| x < middle}
# 	sort(less) << middle << sort(more)
# end


def permutations_destructive(string1, string2)
	array1 = string1.split("")
	array2 = string2.split("")
	until array1.empty? || array2.empty?
		x = array1[0]
		array1_selection = array1.select {|y| y == x } 
		array2_selection = array2.select {|y| y == x }
		if array1_selection == array2_selection
			array1.delete(x)
			array2.delete(x)
		else
			return false
		end
	end
	if array1.empty? && array2.empty? 
		true
	else
		false
	end
end


string1 ="boyygoodthe"
string2="thegoodboy"
permutations_destructive(string1, string2)

































