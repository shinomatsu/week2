class BoggleBoard

  def initialize
    @board = Array.new(4) { Array.new(4) { '' } }
  end
  
  def shake!

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
  
  def include?
  end
  
end

board = BoggleBoard.new
puts board.shake!


