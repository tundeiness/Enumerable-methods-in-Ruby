require_relative '../lib/enumerable.rb'



describe Enumerable do

  describe '#my_each' do
    let(:arr){[1,2,3,4,5]}
    let(:response){[]}

    it 'iterates and display each element of an array' do
      arr.my_each{|x| response << x}
      expect(response).to eql([1,2,3,4,5])
    end
  end

  describe '#my_each_with_index' do
    let(:arr){[1,2,3,4,5]}
    let(:response){[]}
    it 'iterates over an array if a block is given' do
       arr.my_each_with_index{|item, idx| response << idx}
       expect(response).to eql([0,1,2,3,4])
    end
  end

  describe '#my_count' do
    let(:arr){[1,2,3,4,5]}
    it 'returns the number of elements when a block is provided' do
      response = arr.my_count{|ele| ele > 4}
      res = arr.my_count{|ele| ele > 1}
      expect(response).to eql(1)
      expect(res).to eql(4)
    end

    it 'returns the number of elements in an array when no block is provided' do
      expect(arr.my_count).to eql(5)
    end

  end

  describe '#my_select' do
      let(:arr){[1,2,3,4,5]}
      it 'iterates an array to produce elements for which the given block is truthy' do
        response = arr.my_select{|elem| elem % 2 != 0}
        expect(response).to eq([1,3,5])
      end
  end


end
