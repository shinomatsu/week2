class Sudoku
  
  #SIZE = 9
  #NUMBERS = (1..9).to_a

  	#619030040270061008000047621486302079000014580031009060005720806320106057160400030
  def initialize(board_string)

    #@board = Array.new(SIZE) { Array.new(SIZE, "") }


  	@board_string = board_string
    @board = @board_string.split("").each_slice(9).to_a

  end

  def solve!


   end
   
  # Returns a string representing the current state of the board
  # Don't spend too much time on this method; flag someone from staff
  # if you are.
  def board
    @board.each_with_index  do |row, i|

      if i == 0 or i == 3 or i == 6  
      puts "_" * 20

       else
      end
       #p i
       #p row
      row.each_with_index do |cell, j|
        
        if j == 3 or j == 6   
          print "|" + " "
        end

          if cell == "0"
           print '_' + " "
           else
           print cell + " "
          end

      end

       print "\n"
     end


  	#@board = Array.new(SIZE) { Array.new(SIZE, "") }

  

    puts "_" * 20
  end


end

# The file has newlines at the end of each line, so we call
# String#chomp to remove them.
board_string = 
#619030040270061008000047621486302079000014580031009060005720806320106057160400030

File.readlines('sample_unsolved.txt').first.chomp

game = Sudoku.new(board_string)

# Remember: this will just fill out all the "logically necessary" cells and not "guess"
game.solve!

# prints the board with nice formatting to the user
#puts
game.board

