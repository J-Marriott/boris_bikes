require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end


  it { is_expected.to respond_to(:dock).with(1).argument }

  describe '#dock' do
      it 'raises an error when full' do
        DEFAULT_CAPACITY.times {subject.dock (Bike.new)}
        expect { subject.dock Bike.new }.to raise_error 'Docking station is full'
      end
      it "Responds to dock" do
        expect(subject).to respond_to :dock
      end
      it { is_expected.to respond_to(:dock).with(1).argument }
  end


  it { is_expected.to respond_to(:bike) }
end