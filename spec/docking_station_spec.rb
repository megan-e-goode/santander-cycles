require 'docking_station'
describe 'DockingStation' do
  it 'docking station created' do
    expect(DockingStation.new).to eql(nil)
  end
end
