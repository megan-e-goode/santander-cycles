require 'bike'
describe Bike do
  before(:each) do
    @bike = Bike.new
  end
  it 'does working? respond_to' do
    expect(@bike).to respond_to(:working?)
  end

  it 'is working?' do
    expect(@bike.working?).to eql(true)
  end
end
