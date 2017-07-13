require 'journey'

describe Journey do
  subject(:journey) {described_class.new(entry_station, exit_station)}
  let(:entry_station) {"Bank"}
  let(:exit_station) {"Angel"}

    context 'a complete journey' do
      it 'has an entry station' do
        expect(journey.entry_station).to eq entry_station
      end

      it 'it has an exit station' do
        expect(journey.exit_station).to eq exit_station
      end

      it 'checks whether a journey is complete' do
        expect(journey.complete?).to eq true
      end
    end
    
end
