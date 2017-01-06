require_relative 'bike'


class DockingStation
  DEFAULT_CAPACITY = 20
  attr_accessor :capacity, :bike

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
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
    @bikes.count >= capacity
  end

  def empty?
    @bikes.empty?
  end
end
