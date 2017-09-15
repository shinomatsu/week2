
#   def shake!

#     new_array = []
#     2.times do
#       ("a".."z").each do |i|
#       new_array << i
#       end
#     end

#    board = new_array.shuffle.sample(16)

#   puts "#{board[0]}|#{board[1]}|#{board[2]}|#{board[3]}"
#   puts "#{board[4]}|#{board[5]}|#{board[6]}|#{board[7]}"
#   puts "#{board[8]}|#{board[9]}|#{board[10]}|#{board[11]}"
#   puts "#{board[12]}|#{board[13]}|#{board[14]}|#{board[15]}"
  
#   # arrray = ["a", "b", "c"...w", "x", "y", "z"]
# end
# puts shake!

  def shake!

  new_array = ('a'..'z').to_a * 2
  board = new_array.shuffle.sample(16).join
   
   board.split("").each_slice(4) do |row|
   p row
  end
end
shake!

  # puts "#{board[0]}|#{board[1]}|#{board[2]}|#{board[3]}"
  # puts "#{board[4]}|#{board[5]}|#{board[6]}|#{board[7]}"
  # puts "#{board[8]}|#{board[9]}|#{board[10]}|#{board[11]}"
  # puts "#{board[12]}|#{board[13]}|#{board[14]}|#{board[15]}"
  
  # arrray = ["a", "b", "c"...w", "x", "y", "z"]


  # method 1
  # for i in 0..15
  #   x = i % 4
  #   y = i / 4
    
  #   dice = (0..5).map{|i|character.sample}
  #   board[x][y] = dice.sample
  # end

  # method 2
  # x = 0
  # y = 0
  # for i in 0..15
  #   x += 1
  #   if x == 4
  #     x = 0
  #     y += 1
  #   end

  #   dice = (0..5).map{|i|character.sample}
  #   board[x][y] = dice.sample
  # end

  # method 3
def smart_boggle_board
 
  board = [[],[],[],[]]
  character = ('a'..'z').to_a

    for x in 0 .. 3
      for y in 0 .. 3
        
        dice = (0..5).map{|i|character.sample}
        board[x][y] = dice[rand(6)]
        #error
      end
    end

  board.map{ |item| item.join }
end



# board[[1, 2, 3, 4],
# [1, 2, 3, 4],
# [1, 2, 3, 4],
# [1, 2, 3, 4],]



# dice1 = [a,b,c,d,e,f]
# dice2 = [a,b,c,d,e,f]
# dice3 = [a,b,c,d,e,f]
# dice4 = [a,b,c,d,e,f]
# ...
# dice16

# board[0][0] = dice1[rand(6)]
# board[0][0] = dice2[rand(6)]
# board[0][0] = dice3[rand(6)]
# board[0][0] = dice4[rand(6)]

#   def inenitialize
#   end


#   # Defining to_s on an object controls how the object is
#   # represented as a string, e.g., when you pass it to puts
#   #
#   # Override this to print out a sensible board format so
#   # you can write code like:
#   #
#   # board = BoggleBoard.new
#   # board.shake!
#   # puts board
#   def to_s
#     "omg what is this? try printing me."
#   end
# end


def boggle_board_Qu
character = ("A".."Z").to_a.join
character.slice!("Q")
new_character = character.split("").push("Qu")
 board = [[],[],[],[]]

 for x in 0 .. 3
  for y in 0 .. 3
    dice = (0..5).map{|i|new_character.sample}
    board[x][y] = dice[rand(6)]
  end
 end

   board.map{ |item| item.join }
end

puts boggle_board_Qu
 


  # puts "#{board[0][0]} ""#{board[0][1]} " "#{board[0][2]} ""#{board[0][3]} "
  # puts "#{board[1][0]} ""#{board[1][1]} " "#{board[1][2]} ""#{board[1][3]} "
  # puts "#{board[2][0]} ""#{board[2][1]} " "#{board[2][2]} ""#{board[2][3]} "
  # puts "#{board[3][0]} ""#{board[3][1]} " "#{board[3][2]} ""#{board[3][3]} "
  
 
