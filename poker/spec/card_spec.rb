require 'rspec'
require 'card'

describe 'Card' do

  describe '#initialize' do
    let(:four_diamond) { Card.new('4', :diamond, 3)}
    
    it 'should have a valid face value' do
      face_values = (2..10).to_a.map!(&:to_s) + ['J', 'Q', 'K', 'A']
      expect(face_values.include?(four_diamond.value)).to be true
    end
    # it 'should have a valid suit'
    # it 'should have an index between 1-13 indicating its place'
  end

end