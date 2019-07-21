require "directions"

describe "#directions" do

  it "should simplify redundant directions" do
    a = ['NORTH', 'SOUTH', 'SOUTH', 'EAST', 'WEST', 'NORTH', 'WEST']
    expect(dirReduc(a)).to eq(['WEST'])
  end

  it "should return the same array when no redundant moves are detected" do
    u=['NORTH', 'WEST', 'SOUTH', 'EAST']
    expect(dirReduc(u)).to eq(['NORTH', 'WEST', 'SOUTH', 'EAST'])
  end
end

