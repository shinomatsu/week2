# Example 1:

user1 = { name: "Tom", gender: "M" }
user2 = { name: "Ping", age: "21" }
user3 = { name: "Ming Xiang", language: "Elixir"  }
# name:,language: = symbol

# 1. For each hash, what are the keys and values?

# user1: 
# key: name, value: Tom
# key: gender, value: "M"

# user2:
# key: name, value: Ping
# key: age, value: "21"

# user3:
# key: name, value: Ming Xiang
# key: lungage, value: "Elixir"


# 2. How can we access the value "Tom"?
p user1[:name]

# 3. How can we access the value 21?
p user2[:age]

# 4. How can we access the value "Elixir"?
p user3[:language]

# Example 3: Iterate through an array of hashes

# You are given an array of hashes called "users" which comprises of 3 hashes: user1, user2, user3
user1 = { name: "Tom", gender: "M", email: "tom@example.com"}
user2 = { name: "Rachel", gender: "F", email: "rachel@example.com"}
user3 = { name: "Brenda", gender: "F", email: "brenda@example.com"}

# store the hashes in an array
users = [ user1, user2, user3 ]

# 1. Rewrite the users hash so that it's clearer. We have started the first row for you:

users = [
	{ name: "Tom", gender: "M", email: "tom@example.com" },
	{:name=>"Rachel", :gender=>"F", :email=>"rachel@example.com"}, 
	{:name=>"Brenda", :gender=>"F", :email=>"brenda@example.com"}
        ]

# 2. Run the code below. What do you observe?
users.each do |user|
	p user
end

# 3. Run the code below. What do you observe?
users.each do |user|
	p user[:name]
end
#=>"Tom"
#=>"Rachel"
#=>"Brenda"


# 4. Run the code below. What do you observe?
users.each do |user|
	p user[:name], user[:gender]
end
# =>"Tom"
# =>"M"
# =>"Rachel"
# =>"F"
# =>"Brenda"
# =>"F"

# 5. Using the examples given above, write code so that we can display the name, gender and email of 
# each user in the terminal. 
# (Extra credit: display the details of each user in one line.
# For example: "Tom", "M", "tom@example.com" will be in the first line, and the details of the second user will be in the second line, etc.)
users.each do |user|
	arr  = user[:name],user[:gender],user[:email]
	p arr
end


