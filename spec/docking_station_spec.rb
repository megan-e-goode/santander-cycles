require 'docking_station'

describe DockingStation do
  it 'docking station created' do
    expect{DockingStation.new}.not_to raise_error
  end

  it 'can release bike' do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:release_bike)
  end
end
