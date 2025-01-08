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
    @list.append("doop")
    expect(@list.head).to be_a(Node)
    expect(@list.head.data).to eq("doop")
  end

  describe '#count' do
    @list.append("doop")
    expect(@list.count).to eq(1)
  end

  describe '#to_string' do
    @list.append("doop")
    expect(@list.to_string).to eq("doop")
  end
  
end