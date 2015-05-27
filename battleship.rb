def play_battleship

  board = Array.new(10) { Array.new(10, "O") }

  def print_board(board)
    board.each do |r|
      puts r.map { |p| p }.join(" ")
    end
  end


  puts "Let's play Battleship!\n-----\nYou have 10 tries!\n-----"
  print_board(board)
  def random_row(board)
      return rand(10)  
  end

  def random_col(board)
      return rand(10)  
  end

  ship_row = random_row(board)
  ship_col = random_col(board)
  #puts ship_row ##debugging purposes
  #puts ship_col ## ^^^^


  for turn in 1..10
    puts "Turn: #{turn}"
    puts "Guess Row (0-9): "
    guess_row = gets.chomp.to_i  
    puts "Guess Collumn (0-9): "
    guess_col = gets.chomp.to_i
    if turn == 10
        puts "------\nGame Over!\nThe Battleship coordinates were:#{ship_row},#{ship_col}"
        break
    elsif (guess_row == ship_row) && (guess_col == ship_col)
        puts "Congratulations! You sunk my battleship!"
        break
    else
        if ((guess_row < 0) || (guess_row > 9)) || ((guess_col < 0) || (guess_col > 9))
            puts "Oops, that's not even in the ocean."
        elsif(board[guess_row][guess_col] == "X")
            puts "You guessed that one already."
        else
            puts "You missed my battleship!"
            board[guess_row][guess_col] = "X"
              #if turn == 10
                #  puts "Game Over\nThe Battleship coordinates were:#{ship_row},#{ship_col}"
               #   break
              #end
        end
    end
    print_board(board)
  end
end
play_battleship