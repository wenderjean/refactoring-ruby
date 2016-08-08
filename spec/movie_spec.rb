
describe Movie do

  subject { build(:movie) }

  describe '#title' do
    it { expect(subject.title).to eq('The wolf of wall street') }
  end

  describe '#price_code' do
    it { expect(subject.price_code).to eq(Movie::NEW_RELEASE) }
  end
end
