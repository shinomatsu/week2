# Implement an iterative version of the factorial function
# iterative 反復

def factorial_iterative(n)
	factorial = 1
	for i in 1..n
		factorial = factorial * i
	end
	return factorial
end
puts factorial_iterative(9)

# Implement a recursive version of the factorial function
def factorial_recursive(n)
  if n == 0
    1
  else
    n * factorial_recursive(n-1)
  end
end


end

puts factorial_recursive(9) == 362880

# 0! = 1
# n! = n x ( n - 1 )!   (n > 0 のとき)

# fact(0) = 1
# fact(n) = n x fact(n - 1)   (n > 0 のとき)
