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
    expect(docking_station.release_bike).to be_an_instance_of(Bike)
  end
  it "works?" do
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
end
