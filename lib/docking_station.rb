require_relative 'bike'
DEFAULT_CAPACITY = 20

class DockingStation
  attr_reader :bike

  def initialize
    @bikes = []
  end

  def dock(bike)
    fail 'Docking station is full' if full? #@bikes.count >= 20
    @bikes << bike

  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

=begin
  def bike
    @bike
  end
=end

  private

  def full?
    @bikes.size >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end
end
