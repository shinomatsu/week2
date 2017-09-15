# generates a tic tac toe array with the right ratio of 'x' and 'o'

# generates a tic tac toe array with the right ratio of 'x' and 'o'
def generate_realistic_tic_tac_toe
	board_1 = [
    ["x","x","x","x","o","o","o","o","o",],
    ["x","x","x","x","x","o","o","o","o"]
    ]
  board_2 = board_1.sample.shuffle!

	puts "#{board_2[0]}|#{board_2[1]}|#{board_2[2]}"
	puts "#{board_2[3]}|#{board_2[4]}|#{board_2[5]}"
	puts "#{board_2[6]}|#{board_2[7]}|#{board_2[8]}"
  
end
generate_realistic_tic_tac_toe


# turns the array of players into array of hashes
def convert_roster_format(roster)

hashed_roster = [

	Hash[roster[0][0] => roster[1][0],roster[0][1] => roster[1][1], roster[0][2] => roster[1][2],roster[0][3] => roster[1][3]],
	Hash[roster[0][0] => roster[2][0],roster[0][1] => roster[2][1], roster[0][2] => roster[2][2],roster[0][3] => roster[2][3]],
	Hash[roster[0][0] => roster[3][0],roster[0][1] => roster[3][1], roster[0][2] => roster[3][2],roster[0][3] => roster[3][3]],
	Hash[roster[0][0] => roster[4][0],roster[0][1] => roster[4][1], roster[0][2] => roster[4][2],roster[0][3] => roster[4][3]]

]

end

roster = [
["Number","Name","Position","Points per Game"],
[12,"Joe Schmo","Center",[14,32,7,0,23]],
[9,"Ms Buckets","Poin Guard",[19,0,11,22,0]], 
[31, "Harvey Kay","Shooting Guard",[0,30,16,0,25]],
[7,"Sally Talls","Power Forward",[18,29,26,31,19]],
[22,"Mk DiBoux","Small Forward",[11,0,23,17,0]] 
]

hashed_roster = convert_roster_format(roster)

puts hashed_roster[2]

# => { "Number" => 31, "Name" => "Harvery".....