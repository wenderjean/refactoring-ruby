
describe Rental do

  subject { build(:rental) }

  describe '#movie' do
    it { expect(subject.days_rented).to eq(10) }
  end

  describe '#days_rented' do
    describe 'movie is not nil' do
      it { expect(subject.movie).to_not be_nil }
    end

    describe 'movie is "The wolf of wall street"' do
      it { expect(subject.movie.title).to eq('The wolf of wall street') }
    end
  end
end
