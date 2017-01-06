require_relative 'bike'
DEFAULT_CAPACITY = 20

class DockingStation
    attr_reader :bike

    def initialize
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

#    def bike
#      @bikes
#    end

    private

    def full?
      @bikes.count >= DEFAULT_CAPACITY
    end

    def empty?
      @bikes.empty?
    end
end
