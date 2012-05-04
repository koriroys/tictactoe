require 'computer'

describe Computer do
  it "creates a new computer with the correct symbol" do
    computer = Computer.new('O')
    computer.symbol.should == 'O'
  end 
end
