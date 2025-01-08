require './lib/linked_list'
require './lib/node'
require 'rspec'

describe LinkedList do
  before do
    @list = LinkedList.new
  end

  describe '#initialize' do
    it 'exists' do
      expect(@list).to be_a(LinkedList)
    end

    it 'has a head' do
      expect(@list.head).to eq(nil)
    end
  end

  describe '#append' do
    it 'can append nodes to the list' do
      @list.append("doop")
      expect(@list.head).to be_a(Node)
      expect(@list.head.data).to eq("doop")
    end
  end

  describe '#count' do
    it 'can give a count of elements in the list' do
      @list.append("doop")
      @list.append("deep")
      expect(@list.count).to eq(2)
    end
  end

  describe '#to_string' do
    it 'can render the list data as a string' do
      @list.append("doop")
      @list.append("deep")
      expect(@list.to_string).to eq("doop deep")
    end
  end

end