require 'rspec'
require 'tdd'

describe 'Array' do

  describe '#my_uniq' do 
    let(:values) {[1,2,1,3,3]}
    it 'removes duplicates values' do 
      expect(values.my_uniq).to eq([1,2,3])
    end 
  end 

  describe '#two_sum' do
    let(:values1) {[-1, 0, 2, -2, 1]}
    let(:values2) {[-1, 5, -2, 0]}

    it 'returns the indices of the elements if the sum of the two elements is 0' do
      expect(values1.two_sum).to eq([[0, 4], [2, 3]])
    end

    it 'returns an empty array if there are no pairs whose sum is equal to 0' do
      expect(values2.two_sum).to eq([])
    end

    it 'the indices should be in ascending order' do
      expect(values1.two_sum).to eq([[0, 4], [2, 3]])
    end
  end

  describe '#my_transpose' do
    let(:rows) { [ [0, 1, 2], [3, 4, 5], [6, 7, 8] ] }
    it 'should return the same sized matrix' do
      expect(rows.my_transpose.length).to be(3)
    end

    it 'should converts rows to columns and columns to rows' do
      expect(rows.my_transpose).to eq([[0, 1, 2], [3, 4, 5], [6, 7, 8]])
    end
  end
end 

describe '#stock_picker(prices)' do
  let(:prices) {[1,3,5,6,2,7]}
  it 'should return the most profitable pair of days' do 
    expect(stock_picker(prices)).to eq([0,5])
  end 

  it 'sell day should be greater than the buy day' do 
    expect(stock_picker(prices)[0] < stock_picker(prices)[1]).to be true
  end


end


