require 'journey'

describe Journey do
  subject(:journey) {described_class.new(entry_station, exit_station)}
  let(:entry_station) {"Bank"}
  let(:exit_station) {"Angel"}
  let(:fare) {}

    context 'a complete journey and calculating fare' do
      it 'has an entry station' do
        expect(journey.entry_station).to eq entry_station
      end

      it 'it has an exit station' do
        expect(journey.exit_station).to eq exit_station
      end

      it 'checks whether a journey is complete' do
        expect(journey.complete?).to eq true
      end

      it 'calculate fare for a complete journey' do
        expect(journey.fare).to eq Journey::MINIMUM_FARE
      end

    end

end
