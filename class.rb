# class Car
#   def initialize(carname)
#     @name = carname
#   end

#   def dispName
#     puts (@name)
#   end
# end

# car1 = Car.new("crown")
# car1.dispName

# car2 = Car.new("civic")
# car2.dispName

# class Car
#   def dispClassname
#     puts ("Car class")
#   end

#   def dispString(str)
#     puts (str)
#   end
# end

# car = Car.new()
# car.dispClassname
# car.dispString("crown")



# class Greeting
# def hello(str = "Ruby")
# 	puts "Hello #{str}\n"

# end
# end


# g = Greeting.new
# g.hello("World!")
# g.hello

# class HelloWarld
# 	def initialize (myname = "Ruby")
#  		@name = myname
#  	end

# 	def hello
# 		puts "hello, world. I am #{@name}."

# 	end
# end

 

# alice = HelloWarld.new("Alice")

# rubby = HelloWarld.new

# bob.hello
# alice.hello
# rubby.hello



# 	def name
# 		@name
# 	end

# 	def name= (value)
# 		@name = value
		
# 	end
# end

# bob = HelloWarld.new("Bob")

# p bob.name

# p bob.name = "Robert"


# class String

# 	def count_word
# 		ary = self.split( /\s+/) 

# 		return ary.size
# 	end

# end

# str = "Just Anothee Ruby Newbie"
# p str.count_word

# Range.new(1,10)
# #1..10

# sum = 0

# for i in 1..5
# 	sum += i
# end

# puts sum

# p (5..10).to_a
# p (5...10).to_a

class Point
	attr_accessor :x , :y

	def initialize ( x = 0 , y = 0 )
		@x, @y = x, y

	end

	def inspect
		"(#{x}, #{y})"
	
	end

	def + (other)
		self.class.new( x + other.x , y + other.y )

	end

	def - (other)
		self.class.new( x - other.x , y - other.y )
	
	end

	def * (other)
		self.class.new( x * other.x , y * other.y )
		
	end


end

point0 = Point.new(3, 6)
point1 = Point.new(1, 8)
point2 = Point.new

p point0
p point1
p point2
p point1 + point0
p point0 - point1
p point0 * point1













