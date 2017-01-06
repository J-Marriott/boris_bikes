require 'DockingStation'

describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike

end

it "Responds to dock" do
    expect(subject).to respond_to :dock
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

# Removed test as testing for only 1 bike
#  it 'docks a bike' do
#    bike = Bike.new
#    expect(subject.dock(bike)).to eq bike
#  end

  it 'responds to bike' do
    expect(subject).to respond_to :bike
  end

# Removed test testing for only 1 bike
#  it 'returns a docked bike' do
#    bike = Bike.new
#    subject.dock(bike)
#    expect(subject.bike).to eq bike
#  end

describe "#Releases a bike" do
  it 'releases the same bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end

  it "Releases a bike" do
expect {subject.release_bike}.to raise_error 'No bikes'
  end
  end

  describe '#dock' do
      it 'raises an error when full' do

        20.times {subject.dock (Bike.new)}
        expect { subject.dock Bike.new }.to raise_error 'Docking station full'
      end
    end
end
