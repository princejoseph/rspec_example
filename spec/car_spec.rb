require 'car'

RSpec.describe Car do
  let(:car) { Car.new(reg_no, colour) }
  let(:reg_no) { 'KL 22 E 4177' }
  let(:colour) { 'White' }

  describe '#having_colour?' do
    subject { car.having_colour?(colour_name) }

    context 'when colourname is same as car colour' do
      let(:colour_name) { 'White' }

      it 'gives true for the same colour' do
        expect(subject).to eq(true)
      end
    end

    context 'when colourname is different from car colour' do
      let(:colour_name) { 'Red' }

      it 'gives false for different colour' do
        expect(subject).to eq(false)
      end
    end

    context 'when colour is in small letters' do
      let(:colour_name) { 'White' }
      let(:colour) { 'white' }

      it 'gives true regardless of case' do
        expect(subject).to eq(true)
      end
    end
  end

  describe '.colours' do
  end
end
