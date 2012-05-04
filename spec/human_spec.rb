require 'human'

describe Human do
  it 'makes a new human with the proper symbol' do
    a = Human.new('X')
    a.symbol.should == 'X'
  end

end
