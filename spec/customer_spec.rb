
describe Customer do

  subject { build(:customer) }
  let (:txt_statement) { "Rental Record for Jordan Belfort\nThe wolf of wall street - 30\nAmount owed is 30\nYou earned 2 frequent renter points\n" }
  let (:html_statement) { "<h1>\n  <em>Rentals for Jordan Belfort</em>\n</h1>\nThe wolf of wall street - 30\n<p>\n  Amount owe\n  <em>30</em>\n</p>\n<p>\n  On this rental you earned\n  <em>2</em>\n</p>\n" }

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
    context 'when txt is returned' do
      it { expect(subject.statement).to eq(txt_statement) }
    end

    context 'when html is returned' do
      it { expect(subject.html_statement).to eq(html_statement) }
    end
  end
end
