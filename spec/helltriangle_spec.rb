require 'spec_helper'

describe HellTriangle do

  describe '.new' do
    context 'is not instantiated' do
      it 'with null value' do
        expect{ HellTriangle.new(nil) }.to raise_error(ArgumentError, 'triangle must be a Array')
      end

      it 'with empty array' do
        expect{ HellTriangle.new([]) }.to raise_error(ArgumentError, 'triangle must have two or more dimensions')
      end

      it 'with value that is not array' do
        expect{ HellTriangle.new(13) }.to raise_error(ArgumentError, 'triangle must be a Array')
      end

      it 'with invalid array' do
        invalid_matrix = [[3],[5]]
        expect{ HellTriangle.new(invalid_matrix) }.to raise_error(ArgumentError, 'is not triangle')
      end
    end
  end

  describe '#max_total' do
    let(:two_dimensions_array)  { [[3],[4,5]] }
    let(:four_dimensions_array) { [[6],[3,5],[9,7,1],[4,6,8,4]] }
    let(:five_dimensions_array) { [[5],[1,3],[4,7,10],[0,3,2,1],[10,13,11,5,15]] }

    it { expect(HellTriangle.new(two_dimensions_array).max_total).to eq 8 }
    it { expect(HellTriangle.new(four_dimensions_array).max_total).to eq 26 }
    it { expect(HellTriangle.new(five_dimensions_array).max_total).to eq 34 }
  end
end