require "did_i_finish_my_sudoku"

describe "#did_i_finish_my_sudoku" do

  it "should return \"Finished!\" if the board is complete" do
    board1 = [[5, 3, 4, 6, 7, 8, 9, 1, 2],
              [6, 7, 2, 1, 9, 5, 3, 4, 8],
              [1, 9, 8, 3, 4, 2, 5, 6, 7],
              [8, 5, 9, 7, 6, 1, 4, 2, 3],
              [4, 2, 6, 8, 5, 3, 7, 9, 1],
              [7, 1, 3, 9, 2, 4, 8, 5, 6],
              [9, 6, 1, 5, 3, 7, 2, 8, 4],
              [2, 8, 7, 4, 1, 9, 6, 3, 5],
              [3, 4, 5, 2, 8, 6, 1, 7, 9]]
    expect(done_or_not(board1)).to eq('Finished!')
  end

  it "should return \"Try again!\" if the board is incomplete" do
    board2 =[[5, 3, 4, 6, 7, 8, 9, 1, 2],
             [6, 7, 2, 1, 9, 0, 3, 4, 9],
             [1, 0, 0, 3, 4, 2, 5, 6, 0],
             [8, 5, 9, 7, 6, 1, 0, 2, 0],
             [4, 2, 6, 8, 5, 3, 7, 9, 1],
             [7, 1, 3, 9, 2, 4, 8, 5, 6],
             [9, 0, 1, 5, 3, 7, 2, 1, 4],
             [2, 8, 7, 4, 1, 9, 6, 3, 5],
             [3, 0, 0, 4, 8, 1, 1, 7, 9]]
    expect(done_or_not(board2)).to eq('Try again!')
  end

  it "should return \"Try again!\" if the board contains numbers outside of 1..9 " do
      board3 =[[5, 3, 4, 6, 7, 8, 9, 1, 2],
               [6, 7, 2, 1, 9, 0, 3, 4, 9],
               [1, 0, 0, 3, 4, 2, 5, 6, 0],
               [8, 5, 9, 7, 6, 1, 0, 2, 0],
               [4, 2, 6, 8, 5, 3, 7, 9, 1],
               [7, 1, 3, 9, 2, 4, 8, 5, 6],
               [9, 0, 1, 5, 3, 7, 2, 1, 4],
               [2, 8, 7, 4, 1, 9, 6, 3, 5],
               [0, 0, 0, 0, 0, 0, 0,0, 45]]
      expect(done_or_not(board3)).to eq('Try again!')
    end

end

