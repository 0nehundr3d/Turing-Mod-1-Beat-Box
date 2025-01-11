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
      @list.append('doop')

      expect(@list.head).to be_a(Node)
      expect(@list.head.data).to eq("doop")
    end
  end

  describe '#count' do
    it 'can give a count of elements in the list' do
      @list.append('doop')
      @list.append("deep")

      expect(@list.count).to eq(2)
    end
  end

  describe '#to_string' do
    it 'can render the list data as a string' do
      @list.append('doop')
      @list.append("deep")

      expect(@list.to_string).to eq("doop deep")
    end
  end

  describe '#prepend' do
    it 'can prepend nodes to the list' do
      @list.append('doop')
      @list.append('suu')
      @list.prepend('dop')
      
      expect(@list.to_string).to eq('dop doop suu')
    end
  end

  describe '#insert' do
    it 'can insert nodes' do
      @list.append('doop')
      @list.append('suu')
      @list.insert(1, 'dop')

      expect(@list.to_string).to eq('doop dop suu')
    end
  end

  describe '#find' do
    it 'can find nodes' do
      @list.append('deep')
      @list.append('doop')
      @list.append('dop')

      expect(@list.find(2, 1)).to eq('dop')
      expect(@list.find(1, 2)).to eq('doop dop')
    end
  end

  describe '#includes?' do
    it 'can check for inclusion of nodes' do
      @list.append('deep')
      @list.append('doop')
      @list.append('dop')

      expect(@list.includes?('deep')).to eq(true)
      expect(@list.includes?('dep')).to eq(false)
    end
  end

  describe '#pop' do
    it 'can pop nodes' do
      @list.append('deep')
      @list.append('doop')
      @list.append('dop')

      expect(@list.pop.data).to eq('dop')
      expect(@list.to_string).to eq('deep doop')
    end

    it 'can pop one element lists' do
      @list.append('deep')

      expect(@list.pop.data).to eq('deep')
    end
  end
end