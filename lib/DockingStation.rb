require_relative 'bike'

class DockingStation

    attr_reader :bike

    def initialize
      @bikes = []
    end

    def dock(bike)
      fail 'Docking station full' if @bikes.count>=20
      @bikes << bike
    end

    def release_bike
      fail "No bikes" if @bikes.empty?
        bike = @bikes.pop
    end

    #def dock_bike(bike)
        #@bikes = bike
    #end

    def bike
      @bikes
    end
end
