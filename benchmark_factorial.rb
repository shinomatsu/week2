def factorial_iterative(n)
	factorial = 1
	for i in 1..n
		factorial = factorial * i
	end
	return factorial
end


# Implement a recursive version of the factorial function
def factorial_recursive(n)
  if n == 0
    1
  else
    n * factorial_recursive(n-1)
  end
end

require 'benchmark'

num_iteration = 100000

Benchmark.bm 10 do |x|
  x.report "factorial_iterative" do
    num_iteration.times do
     factorial_iterative(40)
    end

  end

  x.report "factorial_recursive" do
    num_iteration.times do
     factorial_recursive(40)
    end
  end

end

