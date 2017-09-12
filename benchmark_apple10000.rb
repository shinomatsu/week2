def benchmark
  # Your benchmarking code goes here.
  # yield 
  start_time = Time.now

  yield # run what is inside the block　

  end_time = Time.now

  return running_time = end_time - start_time

  
end



def run
long_string = "apple"*10000

  running_time = benchmark { long_string.reverse }
 
  puts "string.reverse took #{running_time} seconds to run"

end

run