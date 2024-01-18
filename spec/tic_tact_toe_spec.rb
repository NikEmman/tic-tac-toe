# frozen_string_literal: true

require_relative '../tic_tac_toe'

describe Game do
  subject(:game) { described_class.new }

  describe '#get choice' do
    before do
      allow(game).to receive(:check_round)
      allow(game).to receive(:validate)
      allow(game).to receive(:puts)
      allow(game).to receive(:gets)
      allow(game).to receive(:chomp)
    end
    context 'When given valid choice' do
      it 'checks the round' do
        expect(game).to receive(:check_round).once
      end
    end
  end
end
