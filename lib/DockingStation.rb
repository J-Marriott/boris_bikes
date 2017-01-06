require_relative 'bike'

class DockingStation
    DEFAULT_CAPACITY = 20
    attr_accessor :capacity, :bike


    def initialize(capacity=DEFAULT_CAPACITY)
      @capacity = capacity
      @bikes = []
    end


    def dock(bike)
      fail 'Docking station full' if full?
      @bikes << bike
    end

    def release_bike
      fail "No bikes" if empty?
      @bikes.pop
    end



    private

    def full?
      @bikes.count >= capacity
    end

    def empty?
      @bikes.empty?
    end
end
