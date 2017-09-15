class BoggleBoard
  def initialize
    @board = Array.new(4) { Array.new(4) { '' } }
  end

  def shake!
    dimension = @board.length
    dimension.times do |y|
      dimension.times do |x|
        char = (rand(26) + 65).chr
      end
    end
  end

  def to_s
    (@board.map do |row|
      (row.map do |cell|
        cell == 'Q' ? 'Qu' : "#{cell} "
      end).join(' ')
    end).join("\n")
  end

  def test
    @board = [
      ['A', 'F', 'Qu', 'C'],
      ['Z', 'G', 'X', 'Z'],
      ['C', 'H', 'T', 'O'],
      ['D', 'A', 'R', 'V'],
    ]
  end

  # Searches for whether a word exists on @board or not in a game of Boggle
  def check_word(guess)
    # The constants of the recursive function
    charBoard = @board.flatten # converts the 2D array into 1D
    indexArray = (0 .. charBoard.length).to_a

    # Builds the f
    initCheck = guess.slice!(guess.length - 1)
    initBranches = indexArray
      .select do |i| charBoard[i] == initCheck end
      .each_slice(1).to_a # chunk the array into i
      # you want each branch to be array to hold 

    # Seperate the recursive part into its own function
    branches = self.addBranches(initBranches, guess.split(''), indexArray, charBoard)
    return branches.length > 0
  end
  
  # Recursively adds branches to <branches> if any of existing branches
  # can be extended by characters in <word>
  #
  # Stores the sequence of found letters as a branch
  # A branch is an array of connected indices, so <branches> is an array of arrays
  #
  # <indices> is just an array of 0..15 and <flattenBoard> is the flattened board
  # <indices> and <flattenBoard> don't change between executions
  def addBranches(branches, word, indices, flattenBoard)
    dim = @board.length # A board would be dim by dim in size, so 4 for boggle board
    if word.length == 0 # if no word left to check
      return branches
    else
      character = word.pop # get next character to check
      search = indices     # continues on next line
        .select { |i| flattenBoard[i] == character } # indices of all matched variables
        .map do |match|                              # add branches if possible
          branches 
            .select do |branch| # Filters out the branches
              diff = (branch[0] - match).abs
              (diff == dim || diff == 1 ||   # adjacent vertically or horizontally
                diff == dim + 1 || diff == dim - 1) && # diagonally, extra credit 
                !branch.include?(match) # not already included in branch
            end
            .map do |branch| [match].concat(branch) end
            # Convert indices into new branches by adding the branch to <match>
            # This allows branches to grow since we append to <match>
        end
        .flatten(1) # flatten since map could have added more branches
        

      # Add more branches while we still have characters in <word>
      # 
      self.addBranches(search, word, indices, flattenBoard)
    end
  end

  def addBranches_iterative(branches, word, indices, chars)
    character = word.pop # get next character to check
    search = indices
      .select { |i| chars[i] == character } # get array of matches in indices
      .map do |match| # add branches if possible
        branches
          .select do |branch|
            diff = (branch[0] - match).abs 
            (diff == dim || diff == 1 ||   # adjacent vertically or horizontally
              diff == dim + 1 || diff == dim - 1) && # diagonally 
              !branch.include?(match) # not already included in branch
          end
          .map do |branch| [match].concat(branch) end
      end
      .flatten(1) # flatten since map could have added more branches
    return branches
  end

end

a = BoggleBoard.new
a.test
puts a.to_s
p a.check_word('AZGF')