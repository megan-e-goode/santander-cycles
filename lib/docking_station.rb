require_relative 'Bike'
class DockingStation
  attr_reader :bike, :storage

  def initialize(bike)
    @bike_capacity = bike
    @storage = []
  end

  def release_bike
    raise "No more bikes" if @storage.empty?
    Bike.new
  end

  def dock(bike)
    raise "Dock is full" if @storage.length >= 20
    @storage.push(bike)
  end
end
