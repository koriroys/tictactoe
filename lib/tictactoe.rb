require 'human'
require 'computer'
require 'game'
require 'board'

def tic_tac_toe 
  human = Human.new
  computer = Computer.new
  game = Game.new
  board = Board.new

  loop do
    puts "welcome to tictactoe. make your move"

    9.times do
      board.draw
      game.player_one_turn? ? human.move : computer.move
      break if game.won?

    end

  end
end


