require 'board'

describe Board do
  it "makes a new empty board" do
    board = Board.new
    board.should be_empty
  end

  it "has one tile full after a move is made" do
    board = Board.new
    human = Human.new('X')
    board.add_move(0, 0, human.symbol)
    board.should_not be_empty
    puts board.render
  end

  it "correctly renders a blank board" do
    board = Board.new
    board.render.should == "\n   |   | \n ---------\n   |   | \n ---------\n   |   | \n"
  end

  it "resets back to a blank board" do
    board = Board.new
    human = Human.new('X')
    board.add_move(0, 0, human.symbol)
    puts board.render
    board.reset
    puts board.render
    board.should be_empty
  end

end
