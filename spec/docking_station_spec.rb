require 'docking_station'

describe DockingStation do
  it 'docking station created' do
    expect{DockingStation.new}.not_to raise_error
  end
  before(:each) do
    @docking_station = DockingStation.new
  end
  it 'can release bike' do
    expect(@docking_station).to respond_to(:release_bike)
  end
end
