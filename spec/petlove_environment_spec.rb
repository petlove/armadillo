# frozen_string_literal: true

RSpec.describe PetloveEnvironment, type: :module do
  describe '.methods!' do
    it { expect(described_class.production?).to be_falsey }
    it { expect(described_class.staging?).to be_falsey }
    it { expect(described_class.development?).to be_falsey }
    it { expect(described_class.local?).to be_falsey }
    it { expect(described_class.test?).to be_truthy }
  end
end
