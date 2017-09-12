
# Implement the #linear_search method
def linears_search(n,random_numbers)
	new_array = []
	
	for number in random_numbers
		if number == n
		new_array << n
	else
		end
	end

	return new_array.length
end

random_numbers = [6, 29, 18, 2, 72, 19, 18, 10, 37]
puts linears_search(72,random_numbers)	

# Implement the #global_linear_search method
bananas_arr = "bananas".split(//)
# => ["b", "a", "n", "a", "n", "a", "s"]

def global_linear_search(c,bananas_arr)

	new_array = []

	for character in bananas_arr
		if character == c
		num = bananas_arr.index(character)
		new_array << num
		bananas_arr[num]=nil
	else
		end
	end

	return new_array
end

bananas_arr = "bananas".split(//)
puts global_linear_search("a",bananas_arr)

