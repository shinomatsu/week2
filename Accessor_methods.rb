class Company

  attr_accessor :company_name
  attr_reader :employees

  def initialize(name)
    @company_name  = name
    @employees   = []
  end

  # def company_name
  #   @company_name
  # end
  # It called reader

  # def company_name=(new_name)
  #   @company_name = new_name
  # end
  # It called wriiter
  # >> When you want both reader and writer just use accessor!


   def add_employee(employee)
     @employees << employee

   end

  # def employees
  #   @employees
  # end
end

class Employee

   attr_accessor :name
   attr_accessor :position
  attr_reader :id

  def initialize(name, position)
    @name     = name
    @position = position
    @id       = rand(100_000_000).to_s.insert(2, '-').insert(6, '-')
  end

  # def name
  #  @name
  # end

  # def name=(new_name)
  #   @name = new_name
  # end

  # def position
  #   @position
  # end
  
  # def position=(new_position)
  #   @position = new_position
  # end


  # It called reader
  # It called wriiter
  # >> When you want both reader and writer just use accessor!


  # def id
  #   @id
  # end
end

####################################################
next_academy = Company.new("NEXT Academy")

josh = Employee.new("Josh", "Master Of The Bootiverse")

next_academy.add_employee(josh)

puts (p "#{next_academy.company_name} - #{next_academy.employees.first.name}: #{next_academy.employees.first.position}") == "NEXT Academy - Josh: Master Of The Bootiverse"

josh.name = "Not Spiderman"
josh.position = "Web Swinger"

next_academy.company_name = "Avengers"

puts (p "#{next_academy.company_name} - #{next_academy.employees.first.name}: #{next_academy.employees.first.position}") == "Avengers - Not Spiderman: Web Swinger"
