require 'car'

RSpec.describe Car do
  let(:car) { described_class.new(reg_no, colour) }
  let(:reg_no) { 'KL 22 E 4177' }
  let(:colour) { 'White' }

  describe '#having_colour?' do
    subject { car.having_colour?(colour_name) }

    context 'when colourname is same as car colour' do
      let(:colour_name) { 'White' }

      it { is_expected.to eq(true) }
    end

    context 'when colourname is different from car colour' do
      let(:colour_name) { 'Red' }

      it { is_expected.to eq(false) }
    end

    context 'when colour is in small letters with respect to colour_name' do
      let(:colour_name) { 'White' }
      let(:colour) { 'white' }

      it { is_expected.to eq(true) }
    end
  end

  describe '.colours' do
  end
end
