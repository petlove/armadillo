# frozen_string_literal: true

RSpec.describe Armadillo, type: :module do
  it { expect(described_class::VERSION).not_to be_nil }

  describe '#configuration' do
    subject { described_class.configuration }

    it 'set options' do
      is_expected.to have_attributes(
        envs: [
          { name: :production, condition: false, show: false },
          { name: :staging, condition: false, show: true },
          { name: :development, condition: false, show: true },
          { name: :local, condition: false, show: true },
          { name: :test, condition: true, show: false }
        ],
        position: :right
      )
    end
  end
end
