require 'DockingStation'

describe "New Class DockingStation" do
it 'Check release_bike method' do
  expect (DockingStation).respond_to?: release_bike
end
it {DockingStation.should respond_to?: release_bike}
end
