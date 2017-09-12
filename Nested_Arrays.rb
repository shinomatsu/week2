# Example 2: Nested Arrays
people = 
  [ [1, "Kevin", true],
    [2, "Aiman", false],
    [3, "Er Whey", false],
    [4, "Shin Yin", true],
    [5, "Audrey", false],
    [6, "Colin", true]
  ] 

# Extract the first row
people[0]
>[1, "Kevin", true]
# Extract the third row
people[3]
>[3, "Er Whey", false]
# Extract the last row
people[5]
>[6, "Colin", true]
# Extract the element "Kevin"
people[0][1]
>"Kevin"
# Extract the element 5
people[0][1]
 [6, "Colin", true]
# What do you get when you run the following code? Why?
p people[6]
  nil
=> nil,empty

# Run the following code, what do you observe? In particular, what is the data type of row?
people.each do |row|
  p row
end

>[1, "Kevin", true]
[2, "Aiman", false]
[3, "Er Whey", false]
[4, "Shin Yin", true]
[5, "Audrey", false]
[6, "Colin", true]


# Run the following code, what do you observe?
people.each do |row|
  p row[0], row[1], row[2]
  puts "================="
end
1
"Kevin"
true
=================
2
"Aiman"
false
=================
3
"Er Whey"
false
=================
4
"Shin Yin"
true
=================
5
"Audrey"
false
=================
6
"Colin"
true
=================

# Run the following code, what do you observe?
people.each do |row|
  row.each do |element|
    p element
    puts "=============="
  end
end1
==============
"Kevin"
==============
true
==============
2
==============
"Aiman"
==============
false
==============
3
==============
"Er Whey"
==============
false
==============
4
==============
"Shin Yin"
==============
true
==============
5
==============
"Audrey"
==============
false
==============
6
==============
"Colin"
==============
true
==============



# Run the following code, what do you observe?
people.each.with_index do |row, index|
  p index, row
end
0
[1, "Kevin", true]
1
[2, "Aiman", false]
2
[3, "Er Whey", false]
3
[4, "Shin Yin", true]
4
[5, "Audrey", false]
5
