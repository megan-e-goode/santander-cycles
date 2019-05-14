require_relative 'Bike'
class DockingStation
  attr_reader :bike, :storage

  def initialize(bike)
    @bike = bike
    @storage = []
  end

  def release_bike
    if @storage.empty?
      raise "No more bikes"
    else
      Bike.new
    end
  end

  def dock(bike)
    @storage.push(bike)
  end
end
