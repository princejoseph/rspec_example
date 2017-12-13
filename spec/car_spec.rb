require 'car'

RSpec.describe Car do
  let(:car) { Car.new('KL 22 E 4177', 'White') }

  describe '#having_colour?' do
    it 'gives true for the same colour' do
      expect(car.having_colour?('White')).to eq(true)
    end

    it 'gives false for different colour' do
      expect(car.having_colour?('Red')).to eq(false)
    end

    it 'gives true regardless of case' do
      car = Car.new('KL 22 E 4177', 'white')
      expect(car.having_colour?('White')).to eq(true)
    end
  end

  describe '.colours' do
  end
end
