require_relative 'Bike'
class DockingStation
  attr_reader :bike, :storage

  def initialize(bike)
    @bike = bike
    @storage = []
  end

  def release_bike
    @bike
  end

  def dock(bike)
    @storage.push(bike)
  end
end
