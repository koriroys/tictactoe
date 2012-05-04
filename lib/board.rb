class Board
  def initialize
    @board = [['', '', ''],['','',''],['','','']]
  end

  def empty?
    @board.flatten.all? {|ele| ele.size == 0}
  end

  def add_move(board_row, board_col, symbol)
    @board[board_row][board_col] = symbol
  end

  def reset
    @board.each {|row| row.map! {|col| col = ''}}
  end

  def render 
    string = ""
    string << "\n"
    @board.each_with_index do |row, i|
      string << " "
      row.each_with_index do |col, j|
        string << "#{col.empty? ? " " : col} | " if j < row.size - 1
      end
      string << "\n ---------\n" if i < row.size - 1
    end
    string << "\n"
  end
end
