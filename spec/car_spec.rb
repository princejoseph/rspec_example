require 'car'

RSpec.describe Car do
  let(:car) { Car.new(reg_no, colour) }
  let(:reg_no) { 'KL 22 E 4177' }
  let(:colour) { 'White' }

  describe '#having_colour?' do
    it 'gives true for the same colour' do
      expect(car.having_colour?('White')).to eq(true)
    end

    it 'gives false for different colour' do
      expect(car.having_colour?('Red')).to eq(false)
    end

    context 'when colour is small letters' do
      let(:colour) { 'white' }

      it 'gives true regardless of case' do
        expect(car.having_colour?('White')).to eq(true)
      end
    end
  end

  describe '.colours' do
  end
end
