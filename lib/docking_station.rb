require_relative 'Bike'
class DockingStation
  attr_reader :storage
  DEFAULT_CAPACITY = 20

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
    @storage.length >= DEFAULT_CAPACITY
  end

  def empty?
    @storage.empty?
  end
end
