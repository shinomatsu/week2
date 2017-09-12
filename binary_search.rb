# Place your solutions here
# Implement a method named binary_search

# Place your solutions here
# Implement a method named binary_search

def binary_search(num,test_array)
	test_array.sort!
	min = 0
	max = test_array.length - 1
	
	while min <= max
		mid = (min + max) / 2

		if test_array[mid] < num
			min = mid + 1
			mid = (min + max)/2

		elsif test_array[mid] > num 
			max = mid - 1
			mid = (min + max)/2

		elsif test_array[mid] == num
			return mid
		end

    end

    return -1
end


test_array = (100..200).to_a
puts binary_search(135,test_array) #== 35
test_array = [13,19,24,29,32,37,27]
p binary_search(27,test_array) # == -1