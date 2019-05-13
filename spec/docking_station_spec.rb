require 'docking_station'
describe DockingStation do
  it 'docking station created' do
    expect{DockingStation.new}.not_to raise_error
  end
end
