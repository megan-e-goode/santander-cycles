require_relative 'Bike'
class DockingStation
  attr_reader :storage

  def initialize(bike)
    @bike_capacity = bike
    @storage = []
  end

  def release_bike
    raise "No more bikes" if empty?
    Bike.new
  end

  def dock(bike)
    raise "Dock is full" if full?
    @storage.push(bike)
  end

  private
  def full?
    @storage.length >= 20
  end

  def empty?
    @storage.empty?
  end
end
