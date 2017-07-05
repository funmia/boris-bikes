require_relative 'bike'

class DockingStation
  attr_accessor :bikes

  def initialize
    @bikes = []
  end

  def dock(bike)
    fail 'Docking station is full' if  @bikes.count >= 20
    @bikes << bike
    @bikes 
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
  end
end
