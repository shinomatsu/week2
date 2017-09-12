def fibonacci_iterative(number)
  fibonacchi_array = [0,1]
  
  if number == 0 or number == 1
    fibonacchi_array[number]
  else
    (number - 1).times do |n|
      
     fibonacchi_array << fibonacchi_array[n] + fibonacchi_array[n + 1]
    
    end
    fibonacchi_array.last
  end
  
end
# puts fibonacci_iterative(10)

def fibonacci_recursive(number)

  if number == 0 or number == 1
    return number
  else
    return fibonacci_recursive(number - 2) + fibonacci_recursive(number - 1);
  end
end
#puts fibonacci_iterative(10)

require 'benchmark'

num_iteration = 10000

Benchmark.bm 10 do |x|
  x.report "fibonacci_iterative" do
    num_iteration.times do
     fibonacci_iterative(10)
    end

  end

  x.report "fibonacci_recursiv" do
    num_iteration.times do
     fibonacci_recursive(10)
   end
  end
end

