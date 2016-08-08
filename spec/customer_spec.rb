
describe Customer do

  subject { build(:customer) }
  let (:statement) { "Rental Record for Jordan Belfort\n\tThe wolf of wall street\t30\nAmount owed is 30\nYou earned 2 frequent renter points" }

  describe '#name' do
    it { expect(subject.name).to eq('Jordan Belfort') }
  end

  describe '#rentals' do
    context 'any rental was added' do
        it { expect(subject.rentals.size).to eq(0) }
    end
  end

  describe '#add_rental' do
    before { subject.add_rental(build(:rental)) }
    context 'a new rental was added' do
        it { expect(subject.rentals.size).to eq(1) }
    end
  end

  describe '#statement' do
    before { subject.add_rental(build(:rental)) }
    it 'print statement' do
      expect(subject.statement).to eq(statement)
    end
  end
end
