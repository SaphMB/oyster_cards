require 'journey'

describe Journey do
  subject(:journey) {described_class.new(entry_station)}
  let(:entry_station) {"Bank"}

  it 'has an entry station' do
    expect(journey.entry_station).to eq entry_station
  end

  it 'is not initialised with an exit station' do
    expect(journey.exit_station).to eq nil
  end
end
