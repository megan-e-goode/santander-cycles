require "docking_station"

describe DockingStation do
  let(:docking_station) {
    bike = Bike.new
    DockingStation.new(bike)

  }
  let(:bike) { Bike.new }

  it "docking station created" do
    expect { docking_station }.not_to raise_error
  end

  it "can release bike" do
    docking_station.dock(bike)
    expect(docking_station.release_bike).to be_an_instance_of(Bike)
  end
  it "works?" do
    docking_station.dock(bike)
    expect(docking_station.release_bike.working?).to eql(true)
  end

  it "allows adding bikes in docking station" do
    bike = Bike.new
    #what should the assertion on the dock method be??
    expect(docking_station.dock(bike)).not_to eq(nil)
  end

  it "allows to store bikes in dock" do
    docking_station.dock(bike)
    expect(docking_station.storage).to include(bike)
  end

  it '.release_bike raises exception if no bikes' do
    expect{docking_station.release_bike}.to raise_error "No more bikes"
  end

  it '.dock raises exception if dock is full' do
    docking_station.storage.push(bike)
    expect{(DockingStation::DEFAULT_CAPACITY + 1).times{docking_station.dock(bike)}}.to raise_error "Dock is full"
  end
end
