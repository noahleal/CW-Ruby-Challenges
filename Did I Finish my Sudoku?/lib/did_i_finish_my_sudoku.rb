def done_or_not(board)

  numbers = (1..9).to_a
  columns = [[],[],[],[],[],[],[],[],[]]
  regions = [[],[],[],[],[],[],[],[],[]]

  board.each do |row|
    return 'Try again!'if row.sort != numbers
    row.each_with_index { |number, index| columns[index] << number }
  end

   columns.each { |column| return 'Try again!' if column.sort != numbers }

   board[0..2].each do |row|
     regions[0] << row[0..2]
     regions[1] << row[3..5]
     regions[2] << row[6..8]
   end

   board[3..5].each do |row|
     regions[3] << row[0..2]
     regions[4] << row[3..5]
     regions[5] << row[6..8]
   end

   board[6..8].each do |row|
     regions[6] << row[0..2]
     regions[7] << row[3..5]
     regions[8] << row[6..8]
   end


   regions.each { |region| return 'Try again!' if region.flatten.sort != numbers }


   return 'Finished!'

end
