require 'DockingStation'

describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end


  it 'responds to bike' do
    expect(subject).to respond_to :bike
  end


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
        DEFAULT_CAPACITY.times {subject.dock (Bike.new)}
        expect { subject.dock Bike.new }.to raise_error 'Docking station full'
      end
      it "Responds to dock" do
        expect(subject).to respond_to :dock
      end
      it { is_expected.to respond_to(:dock).with(1).argument }
  end
end
